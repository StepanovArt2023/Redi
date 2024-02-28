import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%201/holder.dart';
import 'package:oech_app001/pages/session%202/forgot_password_page.dart';
import 'package:oech_app001/pages/session%201/onboarding1.dart';
import 'package:oech_app001/pages/session%201/onboarding3.dart';
import 'package:oech_app001/pages/session%201/onboarding4.dart';
import 'package:oech_app001/pages/session%202/login_page.dart';
import 'package:oech_app001/pages/session%202/new_password_page.dart';
import 'package:oech_app001/pages/session%202/sign_up_page.dart';
import 'package:oech_app001/pages/session%203/main_page.dart';
import 'package:oech_app001/pages/session%203/profile_page.dart';
import 'package:oech_app001/pages/session%203/receipt_page.dart';
import 'package:oech_app001/pages/session%203/send_a_package.dart';
import 'package:oech_app001/pages/session%203/notification_page.dart';
import 'package:oech_app001/pages/session%203/transaction_successful_1_page.dart';
import 'package:oech_app001/pages/session%203/transation_succesful_2_page.dart';
import 'package:oech_app001/pages/session%204/delivery_successful_1_page.dart';
import 'package:oech_app001/pages/session%204/delivery_successful_2_page.dart';
import 'package:oech_app001/pages/session%204/send_a_package_2_page.dart';
import 'package:oech_app001/pages/session%204/traking_page.dart';
import 'package:oech_app001/pages/session%204/wallet_page.dart';
import 'package:oech_app001/pages/session_5/chats_page.dart';
import 'package:oech_app001/pages/session_5/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Schyler',
      ),
      routes: {
        // 1 session
        '/': (context) => const Onboarding1Page(),
        '/onboarding3': (context) => const Onboarding3Page(),
        '/onboarding4': (context) => const Onboarding4Page(),
        '/holder_page': (context) => const HolderPage(),
        // 2 session
        '/sign_up_page': (context) => const SignUpPage(),
        '/sign_in_page': (context) => const LoginPage(),
        '/forgot_password_page': (context) => const ForgotPasswoprdPage(),
        '/new_password_page': (context) => const NewPasswordPage(),
        // 3 session
        '/receipt_page': (context) => const ReceiptPage(),
        '/main_page': (context) => const MainPage(),
        '/profile_page': (context) => const ProfilePage(),
        '/send_a_package_page': (context) => const SendPackage(),
        '/notification_page': (context) => const NotificationPage(),
        '/TransactionSuccessful1': (context) => const TransactionSuccessful1(),
        '/TransactionSuccessful2': (context) => const TransactionSuccessful2(),
        // // 4 session
        '/wall': (context) => const WalletPage(),
        '/send_a_package_2_page':(context) => const SendPackage2(),
        '/tracking_page':(context) => const TrackingPage(),
        '/DeliverySuccessful2':(context) => const DeliverySuccessfulPage2(),
        '/DeliverySuccessful1':(context) => const DeliverySuccessfulPage1(),
        // 5 session
        '/home_page': (context) => const HomePage(),
        '/chats_page': (context) => const ChatsPage(),
      },
    );
  }
}
