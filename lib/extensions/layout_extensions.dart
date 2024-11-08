//导出方法名为 VStack
import 'package:flutter/material.dart';
import 'package:flutter_magic/extensions/number_extensions.dart';

dynamic _getChildren(children) {
  //判断children是否为Set，如果不是，则转换为List
  if (children is Set) {
    return children.toList();
  } else if (children is List) {
    return children;
  } else {
    //抛出异常
    throw Exception('children must be List or Set');
  }
}

Widget VStack(
  children, {
  double spacing = 0,
  mainAxisSize = MainAxisSize.min,
  mainAxisAlignment = MainAxisAlignment.start,
  crossAxisAlignment = CrossAxisAlignment.start,
  verticalDirection = VerticalDirection.down,
}) {
  children = _getChildren(children);

  var items=<Widget>[];
  for (var i=0;i<children.length;i++) {
    var item=children[i];
    items.add(item);
    if(i>0) {
      items.add(spacing.hPadding);
    }
  }
  return Column(
    mainAxisSize: mainAxisSize,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    verticalDirection: verticalDirection,
    children: items,
  );
}

//导出方法名为 HStack
Widget HStack(
  children, {
  double spacing = 0,
  mainAxisSize = MainAxisSize.min,
  mainAxisAlignment = MainAxisAlignment.start,
  crossAxisAlignment = CrossAxisAlignment.start,
  verticalDirection = VerticalDirection.down,
}) {
  children = _getChildren(children);
  var items=<Widget>[];
  for (var i=0;i<children.length;i++) {
    var item=children[i];
    items.add(item);
    if(i>0) {
      items.add(spacing.wPadding);
    }
  }
  return Row(
    mainAxisSize: mainAxisSize,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    verticalDirection: verticalDirection,
    children: items,
  );
}
