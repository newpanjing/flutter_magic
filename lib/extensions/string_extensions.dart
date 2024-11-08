
//扩展 string
import 'package:flutter/material.dart';

extension StringExtension on String {

  Text get h1 {
    return Text(
      this,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Text get h2 {
    return Text(
      this,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Text get h3 {
    return Text(this,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500));
  }

  Text get h4 {
    return Text(
      this,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }

  Text get body {
    return Text(
      this,
      style: const TextStyle(fontSize: 14),
    );
  }

  Text get title {
    return Text(
      this,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Text get subTitle {
    return Text(
      this,
      style: const TextStyle(fontSize: 14),
    );
  }
}