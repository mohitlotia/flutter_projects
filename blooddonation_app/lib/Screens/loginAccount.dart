import 'package:blooddonation_app/Screens/createAccount.dart';
import 'package:blooddonation_app/Screens/forgetPassward.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;

class Loginaccount extends StatefulWidget {
  const Loginaccount({super.key});

  @override
  State<Loginaccount> createState() => _LoginaccountState();
}

class _LoginaccountState extends State<Loginaccount> {
  

  //   Future<void> ApiWorkRegex() async {
  //   final response = await http.post(Uri.parse('https://reqres.in/api/login'),
  //       body: {
  //        {
  //   "email": num,
  //   "password": passward
  //    }
  //       });
  //   if (response.statusCode == 200) {
  //      print('Suss');
  //     //  Get.snackbar('$passord', '$num');
  //   } else {
  //     print('Ja re tu');
  //   }
  // }
  //  void initState() {
  //   ApiWorkRegex();
  //   super.initState();
  // }

  var num = TextEditingController();
  var passward = TextEditingController();
   bool obscureText3 = true;
   void toggle3 (){
    setState(() {
      obscureText3 = ! obscureText3;
    });
   }
   
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [       
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Login to your account',style: TextStyle(fontSize: 29,fontWeight: FontWeight.w700,color: Color(0xff303030)),),
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
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
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
                    obscureText: obscureText3,
                    decoration: InputDecoration(
                    hintText: 'Enter Password',
                    suffixIcon: InkWell(
                      onTap: toggle3,
                      child: Icon(
                        obscureText3 == true
                       ? Icons.visibility_off_outlined : Icons.visibility_outlined 
                       )),
                    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                     border:InputBorder.none
                  ),
                ),
              ),
            ),
            Align(
             alignment: Alignment.bottomRight, 
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgetpassward(),));
                  },
                  child: Text('Forgot Password?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffFF0202)),)),
              )),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => Otpverification(),));
                  },
                  child: Container(height: 54,width: double.infinity,
                  child: Center(child: Text('LOGIN',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(69),
                    color: Color(0xffBF222B)
                  ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Createaccount(),));
                  },
                  child: Container(
                    height: 20,
                    width: 200,
                    child: Row(children: [
                      Text('Don’t have account ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff667685)),),
                      Text('SIGNIN',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffFF0202)),)
                    ],),
                  ),
                ),
              )
          ],),
        ),
      ),
    );
  }
}