
import 'package:bettalyfa/features/authentication/screens/onboarding/on_boarding.dart'; // Ensure this is the correct path
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/authentication/screens/forget_Screen/OTP_screen.dart';
import 'features/authentication/screens/forget_Screen/forget_screen.dart';
import 'features/authentication/screens/registeration/registeration.dart';
import 'features/authentication/screens/welcome/wel_come.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OTPScreen(),

    );
  }
}
