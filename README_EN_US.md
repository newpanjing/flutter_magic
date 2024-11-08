# flutter_magic

a flutter Syntactic sugar

To help Flutter developers reduce nesting levels and amount of code, a syntax sugar plugin has been designed that
provides concise syntax to wrap and combine widgets.
Focus on reducing "death nesting" and simplifying code structure:

- Reduce nesting levels
- Reduce code
- Reduce code reading difficulty
- Reduce code maintenance difficulty

## Usage

```shell
flutter pub add flutter_magic
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

## Plugin function summary
### Text

| Class       | Method       | Description           |
|-------------|--------------|-----------------------|
| Text        | color        | Sets text color       |
| Text        | style        | Sets text style       |

### Widget

| Class       | Method       | Description                |
|-------------|--------------|----------------------------|
| Widget      | paddingOnly  | Sets padding              |
| Widget      | size         | Sets width                |
| Widget      | center       | Centers the widget        |
| Widget      | fill         | Expands to fill space     |
| Widget      | alignment    | Sets alignment            |
| Widget      | onTap        | Tap event                 |
| Widget      | rotate       | Rotates the widget        |
| Widget      | opacity      | Sets opacity              |
| Widget      | scale        | Scales the widget         |
| Widget      | gray         | Applies grayscale         |
| Widget      | blur         | Applies blur              |
| Widget      | clipRRect    | Clips with rounded corners|
| Widget      | background   | Sets background           |

### String

| Class       | Property     | Description               |
|-------------|--------------|---------------------------|
| String      | h1, h2, h3, h4 | Sets heading size       |
| String      | title        | Sets as title            |
| String      | subTitle     | Sets as subtitle         |

### Number

| Class       | Property     | Description               |
|-------------|--------------|---------------------------|
| int, double | wPadding     | Sets horizontal padding   |
| int, double | hPadding     | Sets vertical padding     |
| int, double | wPercent     | Sets horizontal percentage|
| int, double | hPercent     | Sets vertical percentage  |
| int, double | padding      | Sets padding             |

## GitHub

https://github.com/newpanjing/flutter_magic