import 'package:blooddonation_app/Screens/notification1.dart';
import 'package:flutter/material.dart';

class BloodaSearch extends StatefulWidget {
  const BloodaSearch({super.key});

  @override
  State<BloodaSearch> createState() => _BloodaSearchState();
}

class _BloodaSearchState extends State<BloodaSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffBF222B),
        title: Text(
          'Blood Availability Search',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notification1()));
                },
                child: Icon(Icons.notifications_outlined)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 180, 179, 179),
                        offset: Offset(0, 1))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Trust Blood Hospital',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            'Available',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff76AF3E)),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Charitable',
                            style: TextStyle(color: Color(0xff706464)),
                          ),
                          Spacer(),
                          Text(
                            'Blood Group O+',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff706464)),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Container(
                width: double.infinity,
                height: 69,
                decoration: BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 180, 179, 179),
                        offset: Offset(0, 1))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Govt. Blood Centre',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            'Available',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff76AF3E)),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Govt',
                            style: TextStyle(color: Color(0xff706464)),
                          ),
                          Spacer(),
                          Text(
                            'Blood Group O+',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff706464)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 180, 179, 179),
                        offset: Offset(0, 1))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Varun Blood Centre',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Not Available',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffBF1D42)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Charitable',
                            style: TextStyle(color: Color(0xff706464)),
                          ),
                          Spacer(),
                          Text(
                            'Blood Group O+',
                            style: TextStyle(color: Color(0xff706464)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 180, 179, 179),
                        offset: Offset(0, 1))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mahtma Blood Centre',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Not Available',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffBF1D42)),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Charitable',
                            style: TextStyle(color: Color(0xff706464)),
                          ),
                          Spacer(),
                          Text(
                            'Blood Group O+',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff706464)),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
