import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../main/main_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.water_drop, size: 40, color: Colors.blue),
              const SizedBox(height: 10),
              const Text(
                "WaterDelivery",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Send OTP",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=> const MainScreen()),(e)=>true);

                },
                color: Colors.blueAccent,
              ),
              const SizedBox(height: 10),
              const Text("or"),
              const SizedBox(height: 10),
              CustomButton(
                text: "Continue with Telegram",
                icon: Icons.telegram,
                onPressed: () {
                  print("Continue with Telegram");
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
