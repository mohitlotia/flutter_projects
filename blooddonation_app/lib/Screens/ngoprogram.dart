
import 'package:flutter/material.dart';

class Ngoprogram extends StatefulWidget {
  const Ngoprogram({super.key});

  @override
  State<Ngoprogram> createState() => _NgoprogramState();
}

class _NgoprogramState extends State<Ngoprogram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color(0xffBF222B),
            title: Text(
              'NGO Program',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.notifications_outlined),
              )
            ],),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                 width: double.infinity,
                height: 110   ,
              decoration: BoxDecoration(        
                image: DecorationImage(image: AssetImage('assets/images/Rectangle 31.png'),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
              ),
              ),
            ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 160,
                      height: 97,
                      child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Image.asset('assets/images/Mask group.png',scale: 4,),
                            ),
                            Text('Blood Availability',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
                            Text('Search',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)
                          ],
                        ),
                      ),
                    ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                           boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
                         ),
                    ),
                  ),
                  SizedBox(width: 8,),
                   Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 160,
                      height: 97,
                      child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                          Container(
                      height: 65,
                      width: 65,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset('assets/images/Mask group (3).png',scale: 4,),
                            ),
                            Text('Become a Volunteer',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
                            // Text('Search',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)
                          ],
                        ),
                      ),
                    ),
                          ],
                        ),
                      ),
                    ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                           boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
                         ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Row(
                  children: [
                     Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 160,
                      height: 97,
                      child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                           Center(
                             child: Container(
                              
                                              height: 65,
                                               width: 80,
                                               child: Center(
                                                 child: Column(
                                                   children: [
                                                      Padding(
                                                          padding: const EdgeInsets.only(bottom: 5),
                                                             child: Image.asset('assets/images/Mask group (1).png',scale: 4,),
                                                      ),
                                                 Text('NGO Activity',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
                                                                           
                                                   ],
                                                 ),
                                               ),
                                             ),
                           ),
                          ],
                        ),
                      ),
                    ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                           boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
                         ),
                    ),
                  ),
                  SizedBox(width: 8,),
                    Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 160,
                      height: 97,
                      child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                           Container(
                      height: 65,
                      width: 53,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset('assets/images/Mask group (5).png',scale: 4,),
                            ),
                            Text('Blood',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
                             Text('Donation',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)
                          ],
                        ),
                      ),
                    ),
                          ],
                        ),
                      ),
                    ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                           boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
                         ),
                    ),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, left: 12),
                child: Row(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 160,
                      height: 97,
                      child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                           Container(
                      height: 65,
                      width: 90,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset('assets/images/Mask group (6).png',scale: 4,),
                            ),
                            Text('Blood Donation',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
                             Text('Camp',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)
                          ],
                        ),
                      ),
                    ),
                          ],
                        ),
                      ),
                    ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                           boxShadow: [BoxShadow(
                  blurRadius: 4,
                  color: Color.fromARGB(255, 180, 179, 179),
                  offset: Offset(0, 1)
                )]
                         ),
                    ),
                  ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}