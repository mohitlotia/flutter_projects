import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffBF222B),
        title: Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 72,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(255, 180, 179, 179),
                offset: Offset(0, 1)
              )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Ellipse 18.png'))),
                          ),
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'we want to thank all of our donors.',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w700,color: Color(0xff473D3D)),
                            ),
                           
                            Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  size: 18,
                                  color: Color(0xff706464)
                                ),
                                Text('Send By NGO            2 Days Ago',
                                 style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,bottom: 10),
                        child: Text(
                              'New',
                              style: TextStyle(
                                fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBF1D42)),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Container(
               width: double.infinity,
                height: 72,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(255, 180, 179, 179),
                offset: Offset(0, 1)
              )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Ellipse 18.png'))),
                          ),
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'we want to thank all of our donors.',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w700,color: Color(0xff473D3D)),
                            ),
                           
                            Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  size: 18,
                                  color: Color(0xff706464)
                                ),
                                Text('Send By NGO            2 Days Ago',
                                 style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,bottom: 10),
                        child: Text(
                              'New',
                              style: TextStyle(
                                fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBF1D42)),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Container(
               width: double.infinity,
                height: 72,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(255, 180, 179, 179),
                offset: Offset(0, 1)
              )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                               boxShadow: [BoxShadow(
                               blurRadius: 4,
                               color: Color.fromARGB(255, 180, 179, 179),
                               offset: Offset(0, 1)
                                )],
                                shape: BoxShape.circle,
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Ellipse 18.png'))),
                          ),
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'we want to thank all of our donors.',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w700,color: Color(0xff473D3D)),
                            ),
                           
                            Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  size: 18,
                                  color: Color(0xff706464)
                                ),
                                Text('Send By NGO            2 Days Ago',
                                 style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Container(
               width: double.infinity,
                height: 72,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(255, 180, 179, 179),
                offset: Offset(0, 1)
              )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Ellipse 18.png'))),
                          ),
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'we want to thank all of our donors.',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w700,color: Color(0xff473D3D)),
                            ),
                           
                            Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  size: 18,
                                  color: Color(0xff706464)
                                ),
                                Text('Send By NGO            2 Days Ago',
                                 style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Container(
               width: double.infinity,
                height: 72,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(255, 180, 179, 179),
                offset: Offset(0, 1)
              )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Ellipse 18.png'))),
                          ),
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'we want to thank all of our donors.',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w700,color: Color(0xff473D3D)),
                            ),
                           
                            Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  size: 18,
                                  color: Color(0xff706464)
                                ),
                                Text('Send By NGO            2 Days Ago',
                                 style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}