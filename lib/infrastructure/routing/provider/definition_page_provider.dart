import 'package:assessment/data/repository/resource/resources_repository.dart';
import 'package:assessment/domain/word/info/get_word_info_use_case.dart';
import 'package:assessment/infrastructure/routing/provider/base_page_provider.dart';
import 'package:assessment/presentation/modules/definition/bloc/definition_bloc.dart';
import 'package:assessment/presentation/modules/definition/definition_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefinitionPageProvider extends BasePageProvider<DefinitionBloc> {
  final GetWordInfoUseCase _getWordInfoUseCase;
  final ResourceRepository _resourceRepository;

  DefinitionPageProvider({
    required GetWordInfoUseCase getWordInfoUseCase,
    required ResourceRepository resourceRepository,
  }) : _getWordInfoUseCase = getWordInfoUseCase,
       _resourceRepository = resourceRepository;

  @override
  DefinitionBloc buildBloc() {
    return DefinitionBloc(
      getWordInfoUseCase: _getWordInfoUseCase,
      resourceRepository: _resourceRepository,
    );
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(create: (_) => getBloc(state), child: DefinitionPage());
  }
}
