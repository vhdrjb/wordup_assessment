
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';

interface class EnvironmentVars{


  static String getWord() {
    assert(
    dotenv.env['WORD_ID'] !=null || Environment.wordId.isNotEmpty, 'variables not set'
    );
    return dotenv.env['WORD_ID']  ?? Environment.wordId;
  }

  static String getWordUrl() {
    assert(
    dotenv.env['WORD_URL'] !=null || Environment.wordServerUrl.isNotEmpty, 'variables not set'
    );
    return dotenv.env['WORD_URL']  ?? Environment.wordServerUrl;
  }

  static String getVideoUrl() {
    assert(
    dotenv.env['VIDEO_URL'] !=null || Environment.videoServerUrl.isNotEmpty, 'variables not set'
    );
    return dotenv.env['VIDEO_URL']  ?? Environment.videoServerUrl;
  }

  static String getImageUrl() {
    assert(
    dotenv.env['IMAGE_URL'] !=null || Environment.imageServerUrl.isNotEmpty, 'variables not set'
    );
    return dotenv.env['IMAGE_URL']  ?? Environment.imageServerUrl;
  }

  static String getPronounceUrl() {
    assert(
    dotenv.env['PRONOUNCE_URL'] !=null || Environment.pronounceServerUrl.isNotEmpty, 'variables not set'
    );
    return dotenv.env['PRONOUNCE_URL']  ?? Environment.pronounceServerUrl;
  }


}