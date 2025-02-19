import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:iconsax/iconsax.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String otp = '';
  bool isButtonEnabled = false;

  void _onOtpChanged(String value) {
    setState(() {
      otp = value;
      isButtonEnabled = value.length == 4; // Enable button when 4 digits entered
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left_2, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Please Check Your Email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "We have sent a confirmation code to your email to reset your password.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 30),

            // OTP Input Field
            Pinput(
              length: 4,
              onChanged: _onOtpChanged,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            // Resend Code Option
            TextButton(
              onPressed: () {
                // TODO: Implement resend OTP functionality
                print("Resend OTP clicked");
              },
              child: const Text(
                "Didn’t see the code? Send Code again",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),

            const SizedBox(height: 30),

            // Reset Password Button
            Opacity(
              opacity: isButtonEnabled ? 1.0 : 0.5, // Faded when disabled
              child: GestureDetector(
                onTap: isButtonEnabled
                    ? () {
                  // TODO: Implement OTP verification logic
                  print("OTP entered: $otp");
                }
                    : null,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isButtonEnabled ? Colors.blue : Colors.blue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
