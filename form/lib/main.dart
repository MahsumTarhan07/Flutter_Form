import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = "Form Login Page";

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle,),
        ),
        body: MyCustomForm(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person, color: Colors.black, size: 30),
                hintText: "Enter You Name",
                labelText: "Name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(
                    Icons.calendar_today,
                    color: Colors.blue,
                    size: 30,
                  ),
                  hintText: "Enter You Date of Birth",
                  labelText: "Dob"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.phone, color: Colors.green, size: 30),
                  hintText: "Enter You Phone Number",
                  labelText: "Phone"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(
                    Icons.email,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  hintText: "Enter You Email",
                  labelText: "Email"),
            ),
            Container(
              padding: const EdgeInsets.only(left: 150, right: 150, top: 40),
              child:  RaisedButton(
                padding: EdgeInsets.only(top: 10 ,bottom: 10, right: 20,left: 20),
                color: Colors.blueAccent,
                child: Text("Submit", style: TextStyle(color: Colors.white,fontSize: 17),),
                onPressed: (){
                  debugPrint("Registration Has Been Made.");
                },
              ),
            )
          ],
        ));
  }
}
