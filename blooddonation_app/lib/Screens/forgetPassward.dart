import 'package:blooddonation_app/Screens/createAccount.dart';
import 'package:blooddonation_app/Screens/verification.dart';
import 'package:flutter/material.dart';

class Forgetpassward extends StatefulWidget {
  const Forgetpassward({super.key});

  @override
  State<Forgetpassward> createState() => _ForgetpasswardState();
}

class _ForgetpasswardState extends State<Forgetpassward> {
  var num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [       
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Forgot Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xff303030)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
            child: Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff667685)),
                borderRadius: BorderRadius.circular(41)
              ),
              child: TextField(
                controller: num,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter Mobile Number',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   border:InputBorder.none
                ),
              ),
            ),
          ),
           Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Createaccount(),));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 20,
                    width: 200,
                    child: Row(children: [
                      Text('Don’t have account ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff667685)),),
                      Text('SIGNIN',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffFF0202)),)
                    ],),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Verification(),));
                },
                child: Container(height: 54,width: double.infinity,
                child: Center(child: Text('SEND',style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(69),
                  color: Color(0xffBF222B)
                ),
                ),
              ),
            ),
            
        ],),
      ),
    );
  }
}