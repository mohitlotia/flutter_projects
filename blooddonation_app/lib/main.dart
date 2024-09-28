// import 'package:blooddonation_app/Screens/createAccount.dart';
import 'package:blooddonation_app/fgneihjiwrly.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyCuVQitugMxnYfQyi5ThtebcpuIKYoDJV0', 
      appId: '1:460888103760:android:cde6dc965846965fe42a55', 
      messagingSenderId: '460888103760', 
      projectId:'asdfghjkl-2e7d5')
  );
  runApp(const MyApp());
//  await Firebase.initializeApp(
//       options: FirebaseOptions(
//         apiKey: 'AIzaSyCuVQitugMxnYfQyi5ThtebcpuIKYoDJV0', 
//         appId: '1:460888103760:android:cde6dc965846965fe42a55', 
//         messagingSenderId: '460888103760', 
//         projectId: 'asdfghjkl-2e7d5'),
//     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build( BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInDemo(),
    );
  }
}

