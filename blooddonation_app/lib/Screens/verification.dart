
import 'package:blooddonation_app/Screens/newpassward.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  var pin = TextEditingController();
  var pin1 = TextEditingController();
  var pin2 = TextEditingController();
  var pin3 = TextEditingController();
  var pin4 = TextEditingController();
  var pin5 = TextEditingController();
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
                'Verification',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
             SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Enter Verification Code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff303030)),),
              )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     ),
                     SizedBox(width: 7,),
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin1,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     ),
                      SizedBox(width: 7,),
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin2,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     ),
                      SizedBox(width: 7,),
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin3,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     ), SizedBox(width: 7,),
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin4,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     ),
                      SizedBox(width: 7,),
                     Container(
                      height: 40,
                      width: 48,
                      color: Color(0xffC2B8B8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pin5,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        border: InputBorder.none,
                       ),
                      ),
                     )
                  ],
                ),
              ),
            ),
             Center(
               child: Container(
                height: 20,
                width: 220,
                child: Row(
                 children: [
                   Text('If you didn’t receive a code!',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,color: Color(0xff667685)),),
                   Text('  RESEND',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,color: Color(0xffFF0202)),),
                 ],
               )),
             ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Newpassward(),));
                  },
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    child: Center(child: Text('VERIFY',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),)),
                    decoration: BoxDecoration(
                      color: Color(0xffBF222B),
                      borderRadius: BorderRadius.circular(69)
                    ),
                  ),
                ),
              ),
            ),
            
            Spacer(),
          ],
        ),
      ),
    );
  }
}