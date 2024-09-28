import 'package:blooddonation_app/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPostScreen extends StatefulWidget {
  const ApiPostScreen({super.key});

  @override
  State<ApiPostScreen> createState() => _ApiPostScreenState();
}

class _ApiPostScreenState extends State<ApiPostScreen> {
  TextEditingController _emailcontroller =
      TextEditingController(text: 'eve.holt@reqres.in');
  TextEditingController _passwordcontroller =
      TextEditingController(text: 'cityslicka');
  Future<void> _ApiWorkRegex() async {
    final response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: {
          "email": _emailcontroller.text,
          "password": _passwordcontroller.text
        });
    if (response.statusCode == 200) {
      print('Suss');
      // Get.snackbar('$_passwordcontroller', '$_emailcontroller');
    } else {
      print('Ja re tu');
    }
  }

  @override
  // void initState() {
  //   _ApiWorkRegex();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Api Testing')),
            ElevatedButton(
                onPressed: () {
                  _ApiWorkRegex();
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       actions: [Text('fjdhfu')],
                  //     );
                  //   },
                  // );
                 Homepage();
                },
                child: Text('Testing'))
          ],
        ),
      ),
    );
  }
}