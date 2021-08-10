import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => const SecondScreen(),
      '/third': (context) => const ThirdScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: PageButtons(context),
        ),
      ),
    );
  }

  PageButtons(context) {
    final ButtonStyle bstyle =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: bstyle,
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, "/second");
          },
          child: const Text('Second'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: bstyle,
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, "/third");
          },
          child: const Text('Third'),
        ),
      ),
    ];
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
