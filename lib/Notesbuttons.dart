import 'package:flutter/material.dart';
import 'package:notepad_application/model/note.dart';
import 'package:notepad_application/notesfile.dart';

// ignore: must_be_immutable
class NotesButtons extends StatefulWidget{
   NotesButtons({super.key, required this.note});

  Note note;

  @override
  State<NotesButtons> createState() => _NotesButtonsState();
}

class _NotesButtonsState extends State<NotesButtons> {

  //var btnTitle="Untitled";
  void changeNote(Note note){
      setState(() {
        //btnTitle=newTitle;
        widget.note=note;
      });
  }

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NotesFiles(note:widget.note, changeNote: changeNote,)));
          },
        child: Text(widget.note.name) ,);
      }
  }