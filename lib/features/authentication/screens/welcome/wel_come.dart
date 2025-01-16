import 'package:bettalyfa/features/authentication/screens/welcome/widgets/option_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BettaLyfeScreen extends StatefulWidget {
  const BettaLyfeScreen({super.key});

  @override
  _BettaLyfeScreenState createState() => _BettaLyfeScreenState();
}

class _BettaLyfeScreenState extends State<BettaLyfeScreen> {
  // Variable to track the selected card index
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left_2, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "BettaLyfe",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Welcome to Bettalyfe",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We are happy to have you onboard. Please choose an account type to register with us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),

            // First Option Card
            OptionCard(
              title: "Personal",
              description: "Individual account for personal use",
              isSelected: _selectedIndex == 0, // Check if this card is selected
              onTap: () {
                setState(() {
                  _selectedIndex = 0; // Set this card as selected
                });
              },
            ),
            const SizedBox(height: 15),

            // Second Option Card
            OptionCard(
              title: "Agent",
              description: "Agents and agency banking",
              isSelected: _selectedIndex == 1, // Check if this card is selected
              onTap: () {
                setState(() {
                  _selectedIndex = 1; // Set this card as selected
                });
              },
            ),
            const SizedBox(height: 15),

            // Third Option Card
            OptionCard(
              title: "Business",
              description: "Business for merchants",
              isSelected: _selectedIndex == 2, // Check if this card is selected
              onTap: () {
                setState(() {
                  _selectedIndex = 2; // Set this card as selected
                });
              },
            ),
            const Spacer(),

            // Register Button
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 15),

            // Login Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  " Already have an account?  ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Terms of Service and Privacy Policy
            const Text(
              "By creating an account, you understand and agree to our Terms of Service and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

