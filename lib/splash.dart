import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String myName = 'Aeppoc Pizza';
  String displayname = 'display text';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(myName),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  Widget displaytext() {
    return MaterialApp(
      title: displayname,
      home: Scaffold(
        appBar: AppBar(
          title: Text(displayname),
        ),
        body: const Center(
          child: Text('Secret here...'),
        ),
      ),
    );
  }

}