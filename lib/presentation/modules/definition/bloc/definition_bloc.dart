import 'package:assessment/data/repository/resource/resources_repository.dart';

import '../../../../domain/base/use_case/use_case_executor.dart';
import '../../../../domain/base/use_case/usecase_result.dart';
import '../../../../domain/word/entity/word_entity.dart';
import '../../../../domain/word/info/get_word_info_request.dart';
import '../../../../domain/word/info/get_word_info_use_case.dart';
import '../../../../infrastructure/bootstrap/environment_vars.dart';
import '../../../base/bloc/base_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'definition_event.dart';

part 'definition_state.dart';

part 'definition_bloc.freezed.dart';

class DefinitionBloc extends BaseBloc<DefinitionEvent, DefinitionState> {
  final GetWordInfoUseCase _getWordInfoUseCase;
  final ResourceRepository _resourceRepository;

  String? currentSenseId;

  DefinitionBloc({required GetWordInfoUseCase getWordInfoUseCase,required ResourceRepository resourceRepository})
    : _getWordInfoUseCase = getWordInfoUseCase,
     _resourceRepository = resourceRepository,
      super(const DefinitionState.initial()) {
    on<_DownloadWordInfo>((event, emit) async {


      emit(DefinitionWordState.loading());
      final String wordId = routingParam.pathParam['id'];
      _getWordInfoUseCase.setRequestParam(GetWordInfoRequest(wordId: wordId));
      final UseCaseResult<WordEntity> result = await UseCaseExecutor.perform(
        _getWordInfoUseCase,
      );
      if (result.hasData) {
        emit(DefinitionWordState.data(result.data));
        currentSenseId = result.data.senses.firstOrNull?.id;
        if (currentSenseId!=null) {
          add(_UpdateMedia(currentSenseId!));
        }
      } else {
        emit(DefinitionWordState.error(result.error));
      }
    });

    on<_UpdateMedia>((event,emit) async {
      emit(DefinitionSenseMediaState.loading());
      if (await _resourceRepository.videoExists(event.id)) {
        emit(DefinitionSenseMediaState.video('${EnvironmentVars.getVideoUrl()}/${event.id}.mp4'));
      }else if (await _resourceRepository.imageExists(event.id)) {
        emit(DefinitionSenseMediaState.image('${EnvironmentVars.getImageUrl()}/${event.id}.webp?v=1'));
      }
    });



  }
}
