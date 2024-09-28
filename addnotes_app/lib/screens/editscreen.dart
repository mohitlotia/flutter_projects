import 'package:addnotes_app/screens/db_helper.dart';
import 'package:addnotes_app/screens/model.dart';
import 'package:addnotes_app/screens/notesscreen.dart';
import 'package:flutter/material.dart';

class Editscreen extends StatefulWidget {
  final String title, description;
  final int? id;
  const Editscreen({super.key, required this.title, required this.description, this.id});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  late TextEditingController title = TextEditingController(text: widget.title);
  late TextEditingController description = TextEditingController(text: widget.description);
    
    DBHelper? dbHelper;
    late Future<List<Notesmodel>> notesList;
   @override
  void initState() {
    dbHelper = DBHelper();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
      appBar:
       AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 80,
          backgroundColor: Colors.black,
          title: Text('Add Notes',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),),
      ),
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 300,              
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black,width: 3),                
                ),
                child: Column(
                  children: [
                    TextField(
                      maxLines: 1,
                      controller: title,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        hintText: 'Title',
                        hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                        border: InputBorder.none
                      ),
                    ),
                     TextField(
                      controller: description,
                      maxLines: 7,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintText: 'Description',
                        hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                        border: InputBorder.none
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                 dbHelper!.edit(Notesmodel(
                  id: widget.id,
                  title: title.text.toString(),
                   description: description.text.toString())).then((value){
                    notesList = dbHelper!.getNotesList();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Update successfully'),backgroundColor: Colors.green,));
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Notesscreen(),));
                   }).onError((error, stackTrace){
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error'),backgroundColor: Colors.red,));
                   });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child:  Center(child: Text('Save',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}