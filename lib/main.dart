import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/screens/signup_screen.dart';
import 'package:instagram_clone_app/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDtjdmqNh3_utbVmNq7rVmE5b_J7EqsJGs",
        appId: "1:819008758899:web:6405d61dc32ca106197606",
        messagingSenderId: "819008758899",
        projectId: "instagram-clone-d451a",
        storageBucket: "instagram-clone-d451a.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const Scaffold(
      //   body: ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout(),
      //   ),
      // ),
      home: const SignupScreen(),
    );
  }
}
