import 'dart:ui';

import 'package:aeppocflutter/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(myName,style: const TextStyle(fontFamily: 'OldEnglishFive')),
        // titleTextStyle: const TextStyle(
        //   fontFamily: 'OldEnglishFive',
        //   fontSize: 25.0,
        //   fontWeight: FontWeight.bold,
        //   letterSpacing: 1,
        // ),
        actions: [
          Icon(Icons.favorite),
          Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: primary,
      ),
      // appBar: AppBar(
      //   titleTextStyle: TextStyle(
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //     letterSpacing: 2.0,
      //     fontFamily: 'OldEnglishFive',
      //   ),
      //   title: Text(myName),
      //   backgroundColor: Colors.red[500],
      // ),
      body: Center(
        child:
        ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              // height: MediaQuery.of(context).size.height * .50,
              color: Colors.amber[700],
              child: const Image(
                image: NetworkImage('https://www.eappocpizza.com/uploads/1/3/5/1/135135369/be-easy-as-pie-illustration-motion_orig.gif'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text(item1)),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: Center(child: Text(item2)),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child: Text(item3)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        tooltip: 'redirect to other page',
        backgroundColor: primary,
      ),
    );
  }

}