
import 'package:blooddonation_app/Screens/bloodsearch.dart';
import 'package:blooddonation_app/Screens/loginAccount.dart';
import 'package:blooddonation_app/Screens/ngoactivity.dart';
import 'package:blooddonation_app/Screens/ngoprogram.dart';
import 'package:blooddonation_app/Screens/notification1.dart';
import 'package:blooddonation_app/Screens/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var feedback =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(  
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Hello, Vikash Sharma',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.white),),
        actions: [ IconButton(
                    onPressed: () {
                      Navigator.push( 
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notification1()));
                    },
                    icon: Icon(Icons.notifications_outlined)),
],
        backgroundColor: Color(0xffBF222B),
      ),
     drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 25),
                    child: Container(
                      height: 65,
                      width: 66,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('assets/images/pv.jpg'),fit: BoxFit.cover )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: Text(
                            'Vikash Sharma',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 45, right: 38),
                          child: Text(
                            '9632587410',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55, bottom: 5),
                child: Container(
                  width: 190,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 3),
                          child: Icon(
                            Icons.person_2_outlined,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 1),
                          child: Text(
                            'Profile',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.history,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Donation History',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notification1()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Notification',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.home,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'About NGO',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55, bottom: 5),
                child: Container(
                  width: 190,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.person_add_alt,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Become a Volunteer',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.security,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profilepage()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.add_task,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Terms & Condition',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginaccount()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 10, top: 2),
                          child: Icon(
                            Icons.logout_sharp,
                            size: 30,
                            color: Color(0xffBF222B),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            'Logout',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
             width:double.infinity,
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
        Container(height: 123,
        width: double.infinity,
        color: Color(0xffFFFFFF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('NGO Has Been Upto',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15,top: 8),
                  height: 67,
                  // width: 160,
                  child: Column(children: [
                    Center(child: Text('Number of Volunteer',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                    Center(child: Text('10,000',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),))
                  ],),
                  decoration: BoxDecoration(
                    color: Color(0xffBF222B),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 79, 76, 76),
                      offset: Offset(0, 1),
                      blurRadius:15, 
                    )]
                  ),
                ),
              ),
              SizedBox(width: 10,),
                Expanded(
                  child: Container(
                     margin: EdgeInsets.only(right: 15,top: 8),
                    height: 67,
                    // width:  160,
                    child: Column(children: [
                      Center(child: Text('Number of Donation',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                      Center(child: Text('110,000',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),))
                    ],),
                    decoration: BoxDecoration(
                      color: Color(0xffBF222B),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Color.fromARGB(255, 79, 76, 76),
                        offset: Offset(0, 1),
                        blurRadius:15, 
                      )]
                    ),
                  ),
                ),
            ],)
          ],
        ),
        ),
        Container(height: 336,width: double.infinity,
        color: Color(0xffFFFFFF),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('NGO Program',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)),
              ),
              Spacer(),
               Padding(
                padding: const EdgeInsets.only(top: 10,right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ngoprogram(),));
                    },
                    child: Text('See All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff0E4EAE)),))),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BloodaSearch()));
                  },
                  child: Container(
                    height: 65,
                    width: 102, 
                    child: Center(
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
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
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
              ),
              Spacer(),
               Padding(
                padding: const EdgeInsets.only(right: 23),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NgoActivity()));
                  },
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
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 14,top: 5),
            child: Container(
               width: double.infinity,
              height: 184   ,
            decoration: BoxDecoration(        
              image: DecorationImage(image: AssetImage('assets/images/rect.jpg'),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10),
              
            ),
            ),
          ),
        ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(height: 122, width: double.infinity,
          color: Color(0xffFFFFFF),
          child: Column(children: [
             Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Latest News',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),)),
              ),
              Spacer(),
               Padding(
                padding: const EdgeInsets.only(top: 10,right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('See All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff0E4EAE)),)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Container(height: 58,width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffEBE7E7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Ellipse 16.png',scale: 4,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65,top: 12,bottom: 12),
                child: Text('Simply dummy text of the printing and type setting industry.',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Color(0xff473D3D)),),
              ),
            ],),
            ),
          )
          ],),
          ),
        ),
        Container(
          height: 343,width:double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 46),
                blurRadius: 130,
                color: Color.fromARGB(160, 145, 139, 139)
              )
            ]
          ),
          child: Column(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Feedback',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff473D3D)),),
              )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 235,
                  width: double.infinity,
                  decoration: BoxDecoration(
                     color: Color(0xffFFFFFF),
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 25,
                        color: Color.fromARGB(255, 84, 83, 83),
                      )
                     ]
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Feel free to share your feedback with us',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff473D3D)),)),
                    ),
                     Row(
                       children: [
                         RatingBar.builder(
                           initialRating: 1,
                           minRating: 1,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                           itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Colors.amber,
                           ),
                           onRatingUpdate: (rating) {
                             print(rating);
                           },
                         ),
                         Spacer()
                       ],
                     ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Tell us about your experience',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff998D8D)),),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 30),
                        child: Container(
                         height: 62,
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff998D8D))
                         ),
                         child: TextField(
                          controller: feedback,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                           hintText: 'Write here',
                            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                           border: InputBorder.none
                          ),
                         ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,),
                        child: Row(
                          children: [
                            Spacer(flex: 3,),
                            Container(
                              height: 46,width: 81,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff473D3D)),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text('Cancel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff473D3D)),)),
                            ),
                            Spacer(),
                             Container(
                              height: 46,width: 156,
                              decoration: BoxDecoration(
                                color: Color(0xffADA2A2),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text('Submit Feedback',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                            ),
                            SizedBox(width: 30,)
                          ],
                        ),
                      )
                  ],),
                ),
              ),
          ],),
        ),
      ],),),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      shape: CircleBorder(),
      backgroundColor: Color(0xffBF222B),
       child: Icon(
          Icons.phone_in_talk,
          color: Colors.white,size: 35,
        ),
      ),
    ));
  }
}