import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
class AutomaticFormValidator extends StatefulWidget {

  @override
  State<AutomaticFormValidator> createState() => _AutomaticFormValidatorState();
}

class _AutomaticFormValidatorState extends State<AutomaticFormValidator> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Automatic FormField Validator",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Riphah_logo.png",
                  width: 230,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Username"),
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Colors.deepPurple,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),),
                  ),
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: "Required"),
                    ]
                  )
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: "Required")
                    ]
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){}
                      },
                      child: Text("Login",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder()
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
