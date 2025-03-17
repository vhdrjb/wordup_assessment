import 'package:flutter/widgets.dart';

extension SizeExtensions on num {
  SizedBox get verticalSpace {
    return SizedBox(height: toDouble(),);
  }
  SizedBox get horizontalSpace {
    return SizedBox(width: toDouble(),);
  }
}