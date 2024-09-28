import 'package:blooddonation_app/Screens/loginAccount.dart';
import 'package:flutter/material.dart';

class Newpassward extends StatefulWidget {
  const Newpassward({super.key});

  @override
  State<Newpassward> createState() => _NewpasswardState();
}

class _NewpasswardState extends State<Newpassward> {
  var newpassword = TextEditingController();
  var passward = TextEditingController();
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
            padding: const EdgeInsets.only(left: 15),
            child: Text('Create New Password',style: TextStyle(fontSize: 29,fontWeight: FontWeight.w700,color: Color(0xff303030)),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Create strong password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffFF0202)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,),
            child: Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff667685)),
                borderRadius: BorderRadius.circular(41)
              ),
              child: TextField(
                controller: newpassword,
                obscureText: true,
                  obscuringCharacter: '*',
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Enter New Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   border:InputBorder.none
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
            child: Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff667685)),
                borderRadius: BorderRadius.circular(41)
              ),
              child: TextField(
                  keyboardType: TextInputType.multiline,
                  controller: passward,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   border:InputBorder.none
                ),
              ),
            ),
          ),
           Spacer(),
           Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginaccount(),));
                },
                child: Container(height: 54,width: double.infinity,
                child: Center(child: Text('VERIFY',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
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