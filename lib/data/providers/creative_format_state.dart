import 'package:creative_builder/domain/creative.dart';
import 'package:flutter/foundation.dart';

class CreativeFormatState with ChangeNotifier {
  CreativeFormat _currentFormat = CreativeFormat(
    type: CreativeFormatType.ad,
    width: 1080,
    height: 1080,
  );

  CreativeFormat get currentFormat => _currentFormat;

  void setCreativeFormat(CreativeFormat format) {
    _currentFormat = format;
    notifyListeners();
  }
}
