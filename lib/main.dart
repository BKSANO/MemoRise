import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notepad_application/Notesbuttons.dart';
import 'package:notepad_application/model/note.dart';
import 'package:notepad_application/notesfile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'No...',),
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
    

  
List<Note> notes = [
    Note(name: 'Milk', description: "2 liter milk need to purchase"),
    Note(name: 'Grosary', description: "erereme rereerereer"),
    Note(name: 'food', description: "ef  t5y5 ty5  "),
    Note(name: 'Milk', description: "4ty5y5ht rryryh gb cv dqwd  wqedw"),
    Note(name: 'vegitable', description: " ytytyetrwe rq eqww ew e e"),
    ];

   // var _noOfButtons=0;

  // void _incrementCounter(Note note) {
  //     setState(() {
  //       //_noOfButtons++;
  //       notes.add(note);
  //     });
  // }

  Column buildColumnOfTextWidgets() {
  List<Widget> list = [];
  for (var i = 0; i < notes.length; i++) {
    list.add( NotesButtons(note:notes[i]));
  }

  // for (var i = 0; i < _noOfButtons; i++) {
  //   list.add(NotesButtons(note: Note(name: "",description: "") ));
  // }
  return Column(children: list);
}

void addNote(Note note){
    setState(() {
        //_noOfButtons++;
        notes.add(note);
      });
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
          // PopupMenuButton<String>(itemBuilder: (BuildContext){
            // return MenuItems.choices.map((String choice){
            //   return PopupMenuItem(child: child)
            // }).toList();
          // })
        ],
        
      ),
      drawer:const Drawer(),
      body:Center(
        child: Container(
          width: 350,
          color:const Color.fromARGB(255, 208, 193, 56),
          child: buildColumnOfTextWidgets(),
        ),
      ),

     
      floatingActionButton: FloatingActionButton(
        onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NotesFiles(note: Note(name: "name", description: "description"), changeNote: addNote,)));
        },
        tooltip: 'Create',
        child: const Icon(Icons.add),
      ), 
    );     
  } 
}
