class Notesmodel{
  
  
  final int? id;
  final String title;
  final String description ; 

  Notesmodel({this.id, required this.title, required this.description});

  Notesmodel.fromMap(Map<String, dynamic> store):

  id = store['id'],
  title = store['title'],
  description = store['description'];

  Map<String, Object?> toMap(){
    return{
      'id' : id,
      'title' : title,
      'description' : description,
    };
  }

}