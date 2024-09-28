// import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

// import 'package:blooddonation_app/Screens/completeProfile.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// // ignore: must_be_immutable
// class Otpverification extends StatefulWidget {
//   String verificationid;
//     Otpverification({super.key, required this.verificationid});

//   @override
//   State<Otpverification> createState() => _OtpverificationState();
// }

// class _OtpverificationState extends State<Otpverification> {
//   final pin1 = TextEditingController();
//   final pin2 = TextEditingController();
//   final pin3 = TextEditingController();
//   final pin4 = TextEditingController();
//   final pin5 = TextEditingController();
//   final pin6 = TextEditingController();

//    // Method to combine the OTP input from all text fields
//   String getOtp() {
//     return pin1.text + pin2.text + pin3.text + pin4.text + pin5.text + pin6.text;
//   }
//   // var pin1 = TextEditingController();
//   // var pin2 = TextEditingController();
//   // var pin3 = TextEditingController();
//   // var pin4 = TextEditingController();
//   // var pin5 = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(),
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Text(
//                 'OTP Verification',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: Text(
//                 'We’ve send you the OTP. Please enter below the OTP received',
//                 style: TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xff667685)),
//               ),
//             ),
//              SizedBox(height: 60,),
//             Center(child: Text('Enter the OTP received',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff303030)),)),
//             SizedBox(height: 20,),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Row(
//                   children: [
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin1,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      ),
//                      SizedBox(width: 7,),
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin2,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      ),
//                       SizedBox(width: 7,),
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin3,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      ),
//                       SizedBox(width: 7,),
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin4,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      ), SizedBox(width: 7,),
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin5,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      ),
//                       SizedBox(width: 7,),
//                      Container(
//                       height: 40,
//                       width: 48,
//                       color: Color(0xffC2B8B8),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         controller: pin6,
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             FocusScope.of(context).nextFocus();
//                           }
//                         },
//                         textAlign: TextAlign.center,
//                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
//                        decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
//                         border: InputBorder.none,
//                        ),
//                       ),
//                      )
//                   ],
//                 ),]=
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Center(
//                 child: InkWell(
//                   onTap: () async{
//                     try {
//                     //Get the OTP from the input fields
//                       String otp = getOtp();
//                       PhoneAuthCredential credential = 
//                       await PhoneAuthProvider.credential(
//                         verificationId: widget.verificationid, 
//                         smsCode: otp);
//                         FirebaseAuth.instance.signInWithCredential(credential).then((Value){
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Completeprofile(),));
//                         });
//                     } catch (ex){
//                       log( ex.toString());
//                     }
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Completeprofile(),));
//                   },
//                   child: Container(
//                     height: 54,
//                     width: double.infinity,
//                     child: Center(child: Text('CONFIRM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
//                     decoration: BoxDecoration(
//                       color: Color(0xffBF222B),
//                       borderRadius: BorderRadius.circular(69)
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Center(child: Text('Resend  OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff667685)),)),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }