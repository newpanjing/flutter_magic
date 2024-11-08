# flutter_magic

a flutter Syntactic sugar

### English document

[English document](./README_EN_US.md)

为了帮助 Flutter 开发者减少嵌套层级和代码量，设计了一个语法糖插件，提供简洁的语法来包装和组合小部件。
专注于减少”死亡嵌套”和简化代码结构：

- 减少嵌套层级
- 减少代码量
- 减少代码阅读难度
- 减少代码维护难度


## Usage

```shell
flutter pub add fit
```

## Example

```dart

import 'package:flutter/material.dart';
import 'package:flutter_magic/magic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter magic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter magic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: ListView(
            padding: 10.padding,
            children: [
              "Font".h1,
              10.hPadding,
              'Flutter magic'
                  .h1
                  .color(Colors.red)
                  .alignment(Alignment.center)
                  .size(width: 200)
                  .paddingOnly(all: 10),
              const Text(
                'Flutter magic',
              )
                  .textStyle(color: Colors.blue, fontSize: 20)
                  .alignment(Alignment.centerRight),
              "Widget".h1.paddingOnly(bottom: 10),
              HStack({
                Text("Click me! $_counter")
                    .paddingOnly(all: 10)
                    .onTap(() {
                  print("123");
                  setState(() {
                    _counter++;
                  });
                })
                    .background(
                  color: _counter % 2 == 0 ? Colors.red : Colors.yellow,
                )
                    .size(width: 100),
                10.wPadding,
                Container(
                  child: Text("round").center(),
                )
                    .background(color: Colors.green)
                    .size(all: 100)
                    .clipRRect(radius: 50)
                    .opacity(0.8)
                    .rotate(45)
                    .paddingOnly(all: 10),
                10.wPadding,

                const SizedBox(
                  width: 100,
                  height: 100,
                ).background(
                    color: Colors.blue,
                    radius: 30.0,
                    border: Border.all(color: Colors.red, width: 2))
              }, spacing: 10)
            ],
          ),
        ));
  }
}


```


## 插件功能概要

### Text

| 类          | 方法          | 描述             |
|------------|-------------|----------------|
| Text       | color       | 设置文本颜色         |
| Text       | style       | 设置字体样式         |

### Widget

| 类          | 方法          | 描述             |
|------------|-------------|----------------|
| Widget     | paddingOnly | 设置内边距          |
| Widget     | size        | 设置宽度           |
| Widget     | center      | 居中             |
| Widget     | fill        | 撑满组件(Expanded) |
| Widget     | alignment   | 对齐方式           |
| Widget     | onTap       | 单机事件           |
| Widget     | rotate      | 旋转             |
| Widget     | opacity     | 透明度            |
| Widget     | scale       | 缩放             |
| Widget     | gray        | 灰度             |
| Widget     | blur        | 模糊             |
| Widget     | clipRRect   | 裁剪圆角           |
| Widget     | background  | 背景             |

### String

| 类          | 属性          | 描述             |
|------------|-------------|----------------|
| String     | h1,h2,h3,h4 | 标题大小           |
| String     | title       | 标题             |
| String     | subTitle    | 子标题            |

### Number
| 类          | 属性       | 描述             |
|------------|----------|----------------|
| int,double | wPadding | 横向间距           |
| int,double | hPadding | 纵向间距           |
| int,double | wPercent | 横向百分比          |
| int,double | hPercent | 纵向百分比          |
| int,double | padding  | 间距             |


## GitHub

https://github.com/newpanjing/flutter_magic