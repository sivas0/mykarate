import 'package:flutter/material.dart';

class Stu1 extends StatelessWidget {
  const Stu1({Key? key}) : super(key: key);

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
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),),
                child: const Text(
                  'Attendance',
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 24),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                child: const Text(
                  'Fees Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 24,
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                child: const Text(
                  'Class Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 24,
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
          ],
        ));
  }
}
