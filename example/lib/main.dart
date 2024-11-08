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
