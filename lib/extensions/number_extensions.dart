
//扩展 int
import 'package:flutter/material.dart';
import 'package:flutter_magic/extensions/context_extensions.dart';

extension IntExtension on int {
  Widget get wPadding {
    return SizedBox(
      width: toDouble(),
    );
  }

  Widget get hPadding {
    return SizedBox(
      height: toDouble(),
    );
  }

  double wPercent(BuildContext context) {
    return context.width * this / 100;
  }

  double hPercent(BuildContext context) {
    return context.height * this / 100;
  }

  EdgeInsetsGeometry get padding {
    return EdgeInsets.all(roundToDouble());
  }
}

//扩展 double
extension DoubleExtension on double {
  Widget get wPadding {
    return SizedBox(
      width: this,
    );
  }

  Widget get hPadding {
    return SizedBox(
      height: this,
    );
  }

  double wPercent(BuildContext context) {
    return context.width * this / 100;
  }

  double hPercent(BuildContext context) {
    return context.height * this / 100;
  }

  EdgeInsetsGeometry get paddingAll {
    return EdgeInsets.all(this);
  }
}