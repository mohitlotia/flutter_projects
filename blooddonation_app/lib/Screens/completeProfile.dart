import 'package:blooddonation_app/Screens/homebottompage.dart';
import 'package:flutter/material.dart';

class Completeprofile extends StatefulWidget {
  const Completeprofile({super.key});

  @override
  State<Completeprofile> createState() => _CompleteprofileState();
}

class _CompleteprofileState extends State<Completeprofile> {
  var name = TextEditingController();
  var email = TextEditingController();
   var pass = TextEditingController();
    var repass = TextEditingController();
    var city = TextEditingController();
    var address = TextEditingController();
    bool ischeck = false;
     String? valuechoose; 
     
     List listItem = [
      "Andaman and Nicobar",
      "Andhra Pradesh",
      "Arunachal Pradesh",
      "Assam",
      "Bihar",
      "Chandigarh",
      "Chhattisgarh",
      "Dadra and Nagar Haveli",
      "Daman and Diu",
      "Delhi",
      "Goa, Gujarat",
      "Haryana",
      "Himachal Pradesh",
      "Jammu and Kashmir",
      "Jharkhand",
      "Karnataka",
      "Kerala",
      "Ladakh",
      "Lakshadweep",
      "Madhya Pradesh",
      "Maharashtra",
      "Manipur",
      "Meghalaya",
      "Mizoram",
      "Nagaland",
      "Odisha",
      "Puducherry",
      "Punjab",
      "Rajasthan",
      "Sikkim",
      "Tamil Nadu",
      "Telangana",
      "Tripura",
      "Uttar Pradesh ",
      "West Bengal.",
    ];
      String? valuechoose2;
    List listItem2 = [
      "A+",
      "A-",
      "B+",
      "B-",
      "O+",
      "O-",
      "AB+",
      "AB-",
    ];
  
   bool obscureText = true;
   void toggle (){
    setState(() {
      obscureText = ! obscureText;
    });
   }
    bool obscureText2 = true;
   void toggle2 (){
    setState(() {
      obscureText2 = ! obscureText2;
    });
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
         
        ),
        body: SingleChildScrollView(
          child: Column(
             mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Complete your profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xff303030)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text('Please provide us your details below.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff667685)),),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
               child: TextField(
                 controller: name,
                 keyboardType: TextInputType.multiline,
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(41),
                  borderSide: BorderSide(color: Color(0xff667685)) 
                ),
                   labelText: 'Name*',
                   labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff000000)),
                   contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(41),
                    borderSide: BorderSide(color: Color(0xff667685))
                
                  ) 
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 height: 46,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     border: Border.all(color: Color(0xff667685)),
                     borderRadius: BorderRadius.circular(41)
                   ),
                 child: TextField(
                   controller: email,
                   keyboardType: TextInputType.multiline,
                   decoration: InputDecoration(
                     hintText: 'Email address',
                     hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff303030)),
                     contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      border:InputBorder.none
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,),
               child: TextField(
               controller: pass,
               obscureText: obscureText,
               keyboardType: TextInputType.multiline,
               decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(41),
                  borderSide: BorderSide(color: Color(0xff667685)) 
                ),
                 labelText:  'Password*',
                 labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff000000)),
                 suffixIcon: InkWell( onTap: toggle,
                   child: Icon( obscureText == true
                   ? Icons.visibility_off_outlined : Icons.visibility_outlined 
                   ),
                 ),
                 contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(41),
                    borderSide: BorderSide(color: Color(0xff667685))
                
                  )
               ),
                                ),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextField(
               controller: repass,
                obscureText: obscureText2,
               keyboardType: TextInputType.multiline,
               decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(41),
                                 borderSide: BorderSide(color: Color(0xff667685)) 
                               ),
                 labelText: 'Confirm password*',
                  labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff000000)),
                   suffixIcon: InkWell( onTap: toggle2,
                   child: Icon( obscureText2 == true
                   ? Icons.visibility_off_outlined : Icons.visibility_outlined                   ),
                 ),
                 contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                 border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(41),
                    borderSide: BorderSide(color: Color(0xff667685))
                
                  )
               ),
                                ),
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
                   controller: city,
                   keyboardType: TextInputType.multiline,
                   decoration: InputDecoration(
                     hintText:  'City',
                     hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff303030)),
                     contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      border:InputBorder.none
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 height: 46,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     border: Border.all(color: Color(0xff667685)),
                     borderRadius: BorderRadius.circular(41)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
                     child: DropdownButton(
                      hint: Text('State',style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff303030)),),
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 36,
                      isExpanded: true,
                      isDense: true,
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff303030)),
                      value: valuechoose,
                       onChanged: (statevalue){
                        setState(() {
                          valuechoose = statevalue! as String?;
                        });
                      },
                      items: listItem.map((state) {
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),
                      ),
                   ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
               child: Container(
                 height: 46,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     border: Border.all(color: Color(0xff667685)),
                     borderRadius: BorderRadius.circular(41)
                   ),
                    child: Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
                     child: DropdownButton( 
                      hint: Text('Blood Group',style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff303030)),),
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 36,
                      isExpanded: true,
                      isDense: true,
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff303030)),
                      value: valuechoose2,
                       onChanged: (Bloodvalue){
                        setState(() {
                          valuechoose2 = Bloodvalue! as String?;
                        });
                      },
                      items: listItem2.map((Blood) {
                        return DropdownMenuItem(
                          value: Blood,
                          child: Text(Blood),
                        );
                      }).toList(),
                      ),
                   ),
               ),
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
                   controller: address,
                   keyboardType: TextInputType.multiline,
                   decoration: InputDecoration(
                     hintText:  'Address',
                     hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff303030)),
                     contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      border:InputBorder.none
                   ),
                 ),
               ),
             ),
             Row(
              children: [
                Checkbox(
                  value: ischeck, onChanged: (bool? newvalue){
                    setState(() {
                      ischeck = newvalue!;
                    });
                  }),
                  Text('I agree the Terms & Conditions',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff667685)),)
              ],
             ),
             Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homebottompage(),));
            },
            child: Container(
              height: 54,
              width: double.infinity,
               child: Center(child: Text('CONTINUE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
              decoration: BoxDecoration(
                color: ischeck? Color(0xffBF222B): Colors.grey,
               borderRadius: BorderRadius.circular(69),
               
              ),
            ),
          ),
        ),
          ],),
        ),
      ),
    );
  }
}