// import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:notepad_application/model/note.dart';

// ignore: must_be_immutable
class NotesFiles extends StatefulWidget{

   NotesFiles({super.key, required this.note ,required this.changeNote });

  Function(Note note) changeNote;
  Note note;



  @override
  State<NotesFiles> createState() => _NotesFilesState();
}

class _NotesFilesState extends State<NotesFiles> {

  
  var textFieldController = TextEditingController();
  var textFormFieldController = TextEditingController();





  void changeTitle(){
    widget.changeNote(Note(name: textFieldController.text, description: textFormFieldController.text));
  }
  

  @override
  Widget build(BuildContext context) {
    
    textFieldController.text=widget.note.name;
    textFormFieldController.text=widget.note.description;

   return PopScope(
     child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 350,
          color: Colors.yellow.shade300,
          child: Column(children: [
            TextField(
              controller:textFieldController,
              decoration:const InputDecoration( hintText: "Enter title..."),
            ),
            TextFormField(
              controller: textFormFieldController,
              decoration:const InputDecoration(hintText: "Enter text..."),
            ),
          ],),
        ),
      ),
     ),

    onPopInvoked: (didPop) {
      changeTitle();
    },
   );
   
  }
}