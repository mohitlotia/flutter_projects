import 'package:blooddonation_app/Screens/donation.dart';
import 'package:blooddonation_app/Screens/homepage.dart';
import 'package:blooddonation_app/Screens/profilepage.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'flutter/src/material/icons.dart';

class Homebottompage extends StatefulWidget {
  const Homebottompage({super.key});

  @override
  State<Homebottompage> createState() => _HomebottompageState();
}
class _HomebottompageState extends State<Homebottompage> {
    int selectedindex = 0;
    List screens = [
     Donation(),
      Homepage(),
      Profilepage()
     
    ];
    void ontapitem (int index){
      setState(() {
        selectedindex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:  screens.elementAt(selectedindex),

      bottomNavigationBar: BottomNavigationBar(
       
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/Mask group (4).png',scale: 3,),label: 'Donation'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: 'Profile'),
          
        ],
        currentIndex: selectedindex,
        selectedItemColor: Color(0xffDB3022),
        unselectedItemColor: Color(0xff303030),
        onTap: ontapitem,
         backgroundColor: Color(0xffEDEDED),
         
        
        
        ),
    );
  }
}