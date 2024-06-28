import 'package:flutter/material.dart';

class EnterClass extends StatelessWidget {
  const EnterClass({Key? key}) : super(key: key);

  static const String _title = 'MY KARATE INTERNATIONAL';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.red,
        ),
        body: const MyStatefulWidget(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[              SizedBox(height: 100,),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ENTER CLASS NAME',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),              SizedBox(height: 50,),


            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  fillColor: Colors.white,filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  labelText: 'Class Name',
                ),
              ),
            ),              SizedBox(height: 50,),


            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text('Add Class',
                    style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),

          ],
        ));
  }
}
