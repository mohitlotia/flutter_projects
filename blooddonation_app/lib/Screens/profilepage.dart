import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffBF222B),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 25),
              child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                      border: Border.all(color: Color(0xffBF222B)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pv.jpg'),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 110, top: 100),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: ListTile(
                                  leading: Icon(Icons.filter_b_and_w_sharp),
                                  title: Text('Gallary'),
                                  onTap: () {
                                    chooseImage("Gallery");
                                  },
                                )),
                                PopupMenuItem(
                                    child: ListTile(
                                  leading: Icon(Icons.filter_b_and_w_sharp),
                                  title: Text('camera'),
                                  onTap: () {
                                    chooseImage("camera");
                                  },
                                ))
                              ],
                            );
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xffBF222B),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Text(
                'Vikash Sharma',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '______________________________________________________________________________________',
                style: TextStyle(fontSize: 5, color: Color(0xff473D3D)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                        color: Color(0xff706464),
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                    hintText: '+91 9523112365',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(41),
                        borderSide: BorderSide(color: Color(0xff667685))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff706464)),
                        borderRadius: BorderRadius.circular(41))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'E Mail',
                    hintText: 'VikashSharma@gmail.com',
                    labelStyle: TextStyle(
                        color: Color(0xff706464),
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(41),
                        borderSide: BorderSide(color: Color(0xff667685))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff706464)),
                        borderRadius: BorderRadius.circular(41))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Blood Group',
                    hintText: 'O+',
                    labelStyle: TextStyle(
                        color: Color(0xff706464),
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(41),
                        borderSide: BorderSide(color: Color(0xff667685))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff706464)),
                        borderRadius: BorderRadius.circular(41))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'State',
                    hintText: 'Rajasthan',
                    labelStyle: TextStyle(
                        color: Color(0xff706464),
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(41),
                        borderSide: BorderSide(color: Color(0xff667685))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff706464)),
                        borderRadius: BorderRadius.circular(41))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'District',
                    hintText: 'Jodhpur',
                    labelStyle: TextStyle(
                        color: Color(0xff706464),
                        fontSize: 11,
                        fontWeight: FontWeight.w700),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(41),
                        borderSide: BorderSide(color: Color(0xff667685))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff706464)),
                        borderRadius: BorderRadius.circular(41))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Container(
                height: 46,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                )),
                decoration: BoxDecoration(
                  color: Color(0xffBF222B),
                  borderRadius: BorderRadius.circular(69),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
