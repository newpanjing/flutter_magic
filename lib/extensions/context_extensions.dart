
import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {

  Size get size => MediaQuery.of(this).size;

  double get height => size.height;

  double get width => size.width;

  double get statusBarHeight => MediaQuery.of(this).padding.top;

  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;


}