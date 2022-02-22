import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return buildNote();
  }

  Scaffold buildNote() {
    return Scaffold(
    body: Column(
      children:  [
        AppBar(
          backgroundColor: const Color(0xFF1380C5),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () { },
          ),
          title: const Text('Title'),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.share)
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.delete)
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: null,
            decoration: InputDecoration(
              hintText: 'Enter your title',
              border: InputBorder.none
            ),
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 25,
           ),

          ),
        ),
        const Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 5.0, right: 5.0),
          child: TextField(
            maxLines: null,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter something',
            ),
          ),
        )
      ],
    ),
  );
  }
}
