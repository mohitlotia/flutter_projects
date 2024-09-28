import 'package:addnotes_app/screens/addnotesscreen.dart';
import 'package:addnotes_app/screens/db_helper.dart';
import 'package:addnotes_app/screens/editscreen.dart';
import 'package:addnotes_app/screens/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notesscreen extends StatefulWidget {
  const Notesscreen({super.key});

  @override
  State<Notesscreen> createState() => _NotesscreenState();
}

class _NotesscreenState extends State<Notesscreen> {
  String search ="";
  bool issearch = false;
  TextEditingController searchcontroller = TextEditingController();
  DBHelper? dbHelper;
   late Future<List<Notesmodel>> notesList;
   getData(){
    notesList = dbHelper!.getNotesList();
   }
   @override
  void initState() {
     dbHelper = DBHelper();
     getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: issearch == false?
        AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          title: Text('Daily Notes',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  issearch = true;
                });
              },
              icon: Icon(Icons.search,size: 40,),
              )],
        ):
          AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.white),
        leading: BackButton(
          onPressed: () {
             setState(() {
                  issearch = false;
                });
          },
        ),
        title:  Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: TextField(
              controller: searchcontroller,
                  maxLines: 1,
                  decoration: InputDecoration(  
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                 hintText: 'Search',
                 hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                border: InputBorder.none
                 ),
                onChanged: (String value){
                search = value.toString();
                 setState(() {
                  });
                }
               ), 
          ),
        ),
      ),
        body:notesList==null?CircularProgressIndicator(): FutureBuilder(
          future: notesList,
          builder: (context, AsyncSnapshot<List<Notesmodel>> snapshot){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder( 
              itemCount: snapshot.data?.length ??0,
              itemBuilder: (context, index) {
                if (searchcontroller.text.isEmpty){
                  return Card( 
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Text(snapshot.data![index].id.toString()??"",style: TextStyle(color: Colors.white,fontSize: 20),),backgroundColor: Colors.black,),
                    title: Text(snapshot.data![index].title.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    subtitle: Text(snapshot.data![index].description.toString(),style: TextStyle(color: Colors.black54,fontSize: 15),),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(child: ListTile(
                          leading: Icon(Icons.edit,color: Colors.black,),
                          title: Text('Edit'),
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editscreen(
                              id: snapshot.data![index].id,
                              title: snapshot.data![index].title.toString(),
                                description: snapshot.data![index].description.toString(),
                            ),));
            
                          },
                        ),),
                         PopupMenuItem(child: ListTile(
                          leading: Icon(Icons.delete_forever,color: Colors.red,),
                          title: Text('Delete'),
                          onTap: () {
                            setState(() {
                              dbHelper!.delete(snapshot.data![index].id!);
                              notesList = dbHelper!.getNotesList();
                              snapshot.data!.remove(snapshot.data![index]);
                              Navigator.pop(context);
                            });
                          },
                        ),)
                      ],),
                  ),
                );
                }
               else if(snapshot.data![index].title.toLowerCase().contains(searchcontroller.text.toLowerCase())){
                 return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Text(snapshot.data![index].id.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),backgroundColor: Colors.black,),
                    title: Text(snapshot.data![index].title.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    subtitle: Text(snapshot.data![index].description.toString(),style: TextStyle(color: Colors.black54,fontSize: 15),),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(child: ListTile(
                          leading: Icon(Icons.edit,color: Colors.black,),
                          title: Text('Edit'),
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editscreen(
                              id: snapshot.data![index].id,
                              title: snapshot.data![index].title.toString(),
                                description: snapshot.data![index].description.toString(),
                            ),));
            
                          },
                        ),),
                         PopupMenuItem(child: ListTile(
                          leading: Icon(Icons.edit,color: Colors.red,),
                          title: Text('Delete'),
                          onTap: () {
                            setState(() {
                              dbHelper!.delete(snapshot.data![index].id!);
                              notesList = dbHelper!.getNotesList();
                              snapshot.data!.remove(snapshot.data![index]);
                              Navigator.pop(context);
                            });
                          },
                        ),)
                      ],),
                  ),
                );
               }
               else {}
                return null;
              },),
          );
  }
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          shape: CircleBorder(),
          child: Icon(Icons.add,color: Colors.white,),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Addnotesscreen(),));
        },),
      ));
  }
}