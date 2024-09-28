import 'package:blooddonation_app/Screens/notification1.dart';
import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
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
    "Ajmer",
    "Bhilwara",
    "Nagaur",
    "Tonk",
    "Baran",
    "Bundi",
    "Jhalawar",
    "Kota",
    "Barmer",
    "Jaisalmer",
    "Jalore",
    "Jodhpur",
    "Pali",
    "Sirohi",
    "Alwar",
    "Dausa",
    "Jaipur",
    "Jhunjhunu",
    "Sikar",
    "Banswara",
    "Chittorgarh",
    "Dungarpur",
    "Pratapgarh",
    "Rajsamand",
    "Udaupur",
    "Bharatpur",
    "Dholpur",
    "Karauli",
    "Sawai Madhopur",
    "Bikaner",
    "Churu",
  ];

  bool obscureText = true;
  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  bool obscureText2 = true;
  void toggle2() {
    setState(() {
      obscureText2 = !obscureText2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              'Donation',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
           
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                  TabBar(
                    isScrollable: true,
                  labelColor: Color(0xff473D3D),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
                  dividerColor: Color(0xff473D3D),
                  unselectedLabelColor: Color(0xff706464),
                  indicatorColor: Color(0xffBF222B),
                  
                  tabs: <Widget>[
                    Tab(
                      text: 'Looking For Blood',
                    ),
                    
                    Tab(
                      text: 'Donate Blood',
                    )
                  ]),
                SizedBox(
                  height: 600,
                  child: TabBarView(children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  'Please Enter details of the person who need blood.',
                                  style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 10),
                                child: TextField(
                                  controller: name,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685))),
                                      labelText: 'Enter Name',
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685)))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: email,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Enter Mobile Number',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: TextField(
                                  controller: name,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685))),
                                      labelText: 'Enter Email Address (Optional)',
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685)))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 3),
                                    child: DropdownButton(
                                      hint: Text(
                                        'Select State',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                                      iconSize: 36,
                                      isExpanded: true,
                                      isDense: true,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff303030)),
                                      value: valuechoose,
                                      onChanged: (statevalue) {
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 3),
                                    child: DropdownButton(
                                      hint: Text(
                                        'Select District',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                                      iconSize: 36,
                                      isExpanded: true,
                                      isDense: true,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff303030)),
                                      value: valuechoose2,
                                      onChanged: (Bloodvalue) {
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: city,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Enter Pin Code',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: city,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Enter Town Name',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: address,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Select Date',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  height: 54,
                                  //color: Color(0xffBF222B),
                                  width: double.infinity,
                                  child: Center(
                                      child: Text(
                                    'SEARCH',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFFFFF)),
                                  )),
                                  decoration: BoxDecoration(
                                    color: Color(0xffBF222B),
                                    borderRadius: BorderRadius.circular(69),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  'Please Enter details of the person who wants to donate blood.',
                                  style: TextStyle(fontSize: 16, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 10),
                                child: TextField(
                                  controller: name,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685))),
                                      labelText: 'Enter Name',
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685)))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: email,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        labelText: 'Enter Mobile Number',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: TextField(
                                  controller: name,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685))),
                                      labelText: 'Enter Email Address (Optional)',
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(41),
                                          borderSide:
                                              BorderSide(color: Color(0xff667685)))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 3),
                                    child: DropdownButton(
                                      hint: Text(
                                        'Select State',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                                      iconSize: 36,
                                      isExpanded: true,
                                      isDense: true,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff303030)),
                                      value: valuechoose,
                                      onChanged: (statevalue) {
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 3),
                                    child: DropdownButton(
                                      hint: Text(
                                        'Select District',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                                      iconSize: 36,
                                      isExpanded: true,
                                      isDense: true,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff303030)),
                                      value: valuechoose2,
                                      onChanged: (Bloodvalue) {
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15, top: 20),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: city,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Enter Pin Code',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: city,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Enter Town Name',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Container(
                                  height: 46,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff667685)),
                                      borderRadius: BorderRadius.circular(41)),
                                  child: TextField(
                                    controller: address,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: 'Select Date',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff303030)),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  height: 54,
                                  //color: Color(0xffBF222B),
                                  width: double.infinity,
                                  child: Center(
                                      child: Text(
                                    'SEARCH',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFFFFF)),
                                  )),
                                  decoration: BoxDecoration(
                                    color: Color(0xffBF222B),
                                    borderRadius: BorderRadius.circular(69),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}