import 'package:assessment/domain/base/use_case/request.dart';

class GetWordInfoRequest implements Request {
  final String wordId;

  GetWordInfoRequest({required this.wordId});

}