//Text

import 'package:flutter/material.dart';

extension TextExtension on Text {
  Widget style(TextStyle style) {
    return DefaultTextStyle(
      style: style,
      child: this,
    );
  }

  Widget color(Color color) {
    return style(TextStyle(color: color));
  }

  Widget fontSize(double size) {
    return style(TextStyle(fontSize: size));
  }

  Widget bold() {
    return style(const TextStyle(fontWeight: FontWeight.bold));
  }

  Widget italic() {
    return style(const TextStyle(fontStyle: FontStyle.italic));
  }

  Widget underline() {
    return style(const TextStyle(decoration: TextDecoration.underline));
  }
}
