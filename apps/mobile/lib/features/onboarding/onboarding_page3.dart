import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAF8F5),
      padding: const EdgeInsets.symmetric(horizontal: 30),

      child: Column(
        children: [

          const Spacer(),

          const Icon(
            Icons.local_laundry_service_rounded,
            size: 150,
            color: Color(0xFFC8B6A6),
          ),

          const SizedBox(height: 40),

          const Text(
            "Laundry Management",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),

          const SizedBox(height: 18),

          const Text(
            "Always know what's available\nand what's in the laundry.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFF6B7280),
              height: 1.5,
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}