import 'package:blooddonation_app/Screens/createAccount.dart';
import 'package:blooddonation_app/Screens/loginAccount.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}
class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Center(
      child: Column(children: [
        const Spacer(),
       Text('LOGO',style: TextStyle(fontSize: 60,fontWeight: FontWeight.w700,color: Color(0xffBF222B)),),
       SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Createaccount(),));
            },
            child: Container(
              height: 54,
              width: double.infinity,
              child: Center(child: Text('SIGN UP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
              decoration: BoxDecoration(
                color: Color(0xffBF222B),
                borderRadius: BorderRadius.circular(69)
            
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Loginaccount(),));
            },
            child: Container(
              height: 54,
              width: double.infinity,
               child: Center(child: Text('LOGIN',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff473D3D)),)),
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(69),
               border: Border.all(color: Color(0xff473D3D))
              ),
            ),
          ),
        ),
        Spacer()        
      ],),
    ),);
  }
}