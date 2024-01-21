import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  var saveValue = "Saved Value";
  var nameKey = "Name";
  var name_Controller = TextEditingController();

  loadData()async{
    var pref = await SharedPreferences.getInstance();
    var prefLoginName = pref.getString(nameKey);
    saveValue = "${prefLoginName} Last Loggined" ?? "Saved Value";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name_Controller,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(CupertinoIcons.info),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var inputData = name_Controller.text.toString();
                    var prefs = await SharedPreferences.getInstance();
                    var flag = await prefs.setString(nameKey, inputData);
                    if(await flag){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Saved")));
                    }
                  },
                  child: Text("Save"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(saveValue)
            ],
          ),
        ),
      ),
    );
  }
}