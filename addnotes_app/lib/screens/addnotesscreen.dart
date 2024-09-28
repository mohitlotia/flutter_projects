import 'package:addnotes_app/screens/db_helper.dart';
import 'package:addnotes_app/screens/model.dart';
import 'package:addnotes_app/screens/notesscreen.dart';
import 'package:flutter/material.dart';

class Addnotesscreen extends StatefulWidget {
  const Addnotesscreen({super.key});

  @override
  State<Addnotesscreen> createState() => _AddnotesscreenState();
}

class _AddnotesscreenState extends State<Addnotesscreen> {
  TextEditingController title = TextEditingController();
   TextEditingController description = TextEditingController();

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
                  dbHelper!.insert(Notesmodel(
                    title: title.text.toString(),
                    description: description.text.toString())).then((Value){
                      setState(() {
                         notesList = dbHelper!.getNotesList();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Notesscreen(),));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Notes Added'),backgroundColor: Colors.green,));
                      });
                     
                    }).onError((error, stackTrace){
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error'),backgroundColor: Colors.red,));
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