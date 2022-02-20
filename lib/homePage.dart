import 'package:flutter/material.dart';
import 'package:notes_app/noteCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffE6ECF1),
        child: Column(
          children: [
            AppBar(
             backgroundColor: const Color(0xFF1380C5),
              title: const Text('Notes'),
              actions: [
                IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(Icons.search)
                ),
              ],
            ),
            Center(
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
