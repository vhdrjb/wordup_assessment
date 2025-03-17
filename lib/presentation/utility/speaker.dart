import 'package:flutter_tts/flutter_tts.dart';

class Speaker {
  static Speaker? _instance;
  final FlutterTts _flutterTts = FlutterTts();

  static Speaker get instance {
    _instance ??= Speaker._();
    return _instance!;
  }
  Speaker._() {
    _init();
  }

  Future<void> _init() async {
    await _flutterTts.setLanguage("en-US"); // Set to English
    await _flutterTts.setSpeechRate(0.5); // Default speed
    await _flutterTts.setVolume(1.0); //
  }

  Future<void> speak(String text) async {
    await _flutterTts.speak(text);
  }
}
