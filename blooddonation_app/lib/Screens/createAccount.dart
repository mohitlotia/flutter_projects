// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  var phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 21,
                width: 350,
                child: Text(
                  'Enter your mobile number to get started',
                  style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667685)),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff667685),
                      ),
                      borderRadius: BorderRadius.circular(46)),
                  child: Row(
                    children: [
                      
                         CountryCodePicker(
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'In',
                          favorite: ['+91', 'In'],
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                                                 ),
                      
                      Text('|',style: TextStyle(fontSize: 24),),
                      Expanded( 
                        child: TextField(
                          controller: phonenumber,
                          keyboardType: TextInputType.phone,
                           decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                            border:InputBorder.none
                           )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20,),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential){}, 
                    verificationFailed: (FirebaseAuthException ex){}, 
                    codeSent: (String verificationid, int? resendtoken){
                   
                    }, 
                    codeAutoRetrievalTimeout: (String verificationId){},
                    phoneNumber: phonenumber.text.toString());
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Otpverification(),));
                },
                child: Container(
                  height: 54,
                  width: double.infinity,
                  child: Center(child: Text('SEND OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Color(0xffBF222B),
                    borderRadius: BorderRadius.circular(69)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 20,
                  width: 210,
                  
                  child: Row(children: [
                    Text('Already have an account?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff667685)),),
                    Text(' LOGIN',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xffFF0202)),),
                  ],)
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: 250,
                height: 50,
                child: Column(children: [
                  Text('By creating  an account, I agree to the',style: TextStyle(fontSize: 12,color: Color(0xff667685)),),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Terms & Conditions and Privacy Policy',style: TextStyle(fontSize: 12,color: Color(0xff667685)),),
                  ),
                ],),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}