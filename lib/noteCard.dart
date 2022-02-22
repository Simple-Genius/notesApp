import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: InkWell(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(

              children: [
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      'title',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.delete
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

