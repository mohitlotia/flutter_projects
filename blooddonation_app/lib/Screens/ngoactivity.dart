import 'package:blooddonation_app/Screens/notification1.dart';
import 'package:flutter/material.dart';

class NgoActivity extends StatefulWidget {
  const NgoActivity({super.key});

  @override
  State<NgoActivity> createState() => _NgoActivityState();
}

class _NgoActivityState extends State<NgoActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'NGO Activity',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notification1()));
                  },
                  icon: Icon(Icons.notifications_outlined)),
            ),
          ],
          backgroundColor: Color(0xffBF222B),
          bottom: TabBar(
              labelColor: Colors.white,
              dividerColor: Colors.black,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: 'All Post',
                ),
                Tab(
                  text: 'NGO Event',
                )
              ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        Container(
                          //Image.asset('assets/mini.png')
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Ellipse 18.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Post by NGO',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 19),
                                child: Text(
                                  '2 Hours Ago',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      'we want to thank all of our donors for their generous contribution.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 8, bottom: 8),
                    child: Container(
                      width: double.infinity,
                      height: 173,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Rectangle 111.png'),
                              fit: BoxFit.fill)),

                      //color: Colors.green,
                    ),
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(bottom: 77, left: 66, right: 20),
                  //   child: Container(
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(bottom: 100, right: 50),
                  //       child: Image.asset('assets/Vector.png'),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '32 Likes',
                          style: TextStyle(color: Color(0xff857878)),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '10 Comments',
                            style: TextStyle(color: Color(0xff857878)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_rounded,
                        ),
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                        ),
                      ),
                      SizedBox(),
                      Text(
                        'Comment',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          'Share',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 5, color: Color(0xffC2B8B8)),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        Container(
                          //Image.asset('assets/mini.png')
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Ellipse 18.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Post by NGO',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 19),
                                child: Text(
                                  '2 Hours Ago',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      'we want to thank all of our donors for their generous contribution.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 11, left: 15, right: 15),
                    child: Text(
                      'we want to thank all of our donors for their generous contribution. Your blood donations can save lives, and we are grateful for your selfless act of kindness.',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '32 Likes',
                          style: TextStyle(color: Color(0xff857878)),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '10 Comments',
                            style: TextStyle(color: Color(0xff857878)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: 365,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'We are thrilled to host',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 77),
                                child: Text(
                                  'this event.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 8),
                                child: Text(
                                  '22-03-2023 at Jodhpur',
                                  style: TextStyle(color: Color(0xff706464)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 88, top: 8),
                                child: Text(
                                  'Upcoming',
                                  style: TextStyle(color: Color(0xff76AF3E)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 130,
                    width: 365,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/pic2.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'We are thrilled to host',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 77),
                                child: Text(
                                  'this event.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 8),
                                child: Text(
                                  '22-03-2023 at Jodhpur',
                                  style: TextStyle(color: Color(0xff706464)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 88, top: 8),
                                child: Text(
                                  'Upcoming',
                                  style: TextStyle(color: Color(0xff76AF3E)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 130,
                    width: 365,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/pic3.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'We are thrilled to host',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 77),
                                child: Text(
                                  'this event.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 8),
                                child: Text(
                                  '22-03-2023 at Jodhpur',
                                  style: TextStyle(color: Color(0xff706464)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 109, top: 8),
                                child: Text(
                                  'Recent',
                                  style: TextStyle(color: Color(0xffBF1D42)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 130,
                    width: 365,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/pic4.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'We are thrilled to host',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 77),
                                child: Text(
                                  'this event.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 8),
                                child: Text(
                                  '22-03-2023 at Jodhpur',
                                  style: TextStyle(color: Color(0xff706464)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 109, top: 8),
                                child: Text(
                                  'Recent',
                                  style: TextStyle(color: Color(0xffBF1D42)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
