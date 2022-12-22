import 'package:adaptive_breakpoints_freezed/adaptive_breakpoints_freezed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive"),
      ),
      body: AdaptiveBuilder(
        builder: (context, entry, constraints) {
          return entry.type.when(
            xs: () {
              return Text(
                "xs $_counter",
                style: const TextStyle(color: Colors.black, fontSize: 18),
              );
            },
            s: () {
              return Text(
                "s $_counter",
                style: const TextStyle(color: Colors.black, fontSize: 18),
              );
            },
            m: () {
              return Text(
                "m $_counter",
                style: const TextStyle(color: Colors.black, fontSize: 18),
              );
            },
            l: () {
              return Text(
                "l $_counter",
                style: const TextStyle(color: Colors.black, fontSize: 18),
              );
            },
            xl: () {
              return Text(
                "xl $_counter",
                style: const TextStyle(color: Colors.black, fontSize: 18),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.adaptive.whenDevice(
            mobile: () {
              _counter++;
            },
            tablet: () {
              _counter += 2;
            },
            desktop: () {
              _counter += 4;
            },
          );
        },
        tooltip: 'Increment',
        child: context.adaptive.whenDevice(
          mobile: () => const Icon(Icons.screenshot),
          tablet: () => const Icon(Icons.tablet),
          desktop: () => const Icon(Icons.desktop_mac),
        ),
      ),
    );
  }
}
