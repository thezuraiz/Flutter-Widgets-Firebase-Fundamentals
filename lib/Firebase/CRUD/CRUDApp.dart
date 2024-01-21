import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class CRUDApp extends StatefulWidget {
  @override
  _CRUDAppState createState() => _CRUDAppState();
}

class _CRUDAppState extends State<CRUDApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Firestore CRUD"),
      ),
      body: BookList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Add"),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Title: ",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    TextField(
                      controller: titleController,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("Author: "),
                    ),
                    TextField(
                      controller: authorController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Undo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      //TODO: Firestore create a new record code

                      Map<String, dynamic> newBook = {
                        "title": titleController.text,
                        "author": authorController.text,
                      };

                      await FirebaseFirestore.instance
                          .collection("books")
                          .add(newBook)
                          .whenComplete(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text(
                      "save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Add Title',
        child: Icon(Icons.add),
      ),
    );
  }
}

class BookList extends StatelessWidget {

  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('books').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            return ListView(
              padding: EdgeInsets.only(bottom: 80),
              children: snapshot.data!.docs.map(
                    (DocumentSnapshot document) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Card(
                      child: ListTile(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Update Dilaog"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Title: ",
                                      textAlign: TextAlign.start,
                                    ),
                                    TextField(
                                      controller: titleController, // Use titleController here
                                      decoration: InputDecoration(
                                        hintText: document['title'],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("Author: "),
                                    ),
                                    TextField(
                                      controller: authorController, // Use authorController here
                                      decoration: InputDecoration(
                                        hintText: document['author'],
                                      ),
                                    ),
                                  ],
                                ),
                                actions: <Widget>[
                                  // ... (other actions)
                                  ElevatedButton(
                                    child: Text("Update"),
                                    onPressed: () async {
                                      //TODO: Firestore update a record code

                                      Map<String, dynamic> updateBook = {
                                        "title": titleController.text,
                                        "author": authorController.text,
                                      };

                                      // Update Firestore record information
                                      FirebaseFirestore.instance
                                          .collection("books")
                                          .doc(document.id)
                                          .update(updateBook)
                                          .then((value) {
                                        Navigator.pop(context);
                                      }).catchError((error) {
                                        print("Error updating document: $error");
                                      });
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        title: Text("Title " + document['title']),
                        subtitle: Text("Author " + document['author']),
                        trailing: InkWell(
                          onTap: () async {
                            //TODO: Firestore delete a record code
                            await FirebaseFirestore.instance
                                .collection("books")
                                .doc(document.id) // Replace document.documentID with document.id
                                .delete()
                                .catchError((e) {
                              print(e);
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Icon(Icons.delete),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            );
        }
      },
    );
  }
}