import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8F5),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF8F5),
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Calla",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 25),

            const Text(
              "Welcome 👋",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Let's build your digital wardrobe.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 45),

            SizedBox(
              width: double.infinity,
              height: 60,

              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC8B6A6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                onPressed: () {},

                icon: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),

                label: const Text(
                  "Scan Clothing",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 60,

              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFFC8B6A6),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                onPressed: () {},

                icon: const Icon(
                  Icons.photo_library_outlined,
                  color: Color(0xFFC8B6A6),
                ),

                label: const Text(
                  "Upload Clothing",
                  style: TextStyle(
                    color: Color(0xFFC8B6A6),
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 60,

              child: TextButton.icon(
                onPressed: () {},

                icon: const Icon(
                  Icons.auto_awesome,
                  color: Color(0xFFC8B6A6),
                ),

                label: const Text(
                  "Describe Clothing with AI",
                  style: TextStyle(
                    color: Color(0xFFC8B6A6),
                    fontSize: 17,
                  ),
                ),
              ),
            ),

            const Spacer(),

            const Center(
              child: Text(
                "Your wardrobe is empty.\nLet's add your first clothing item.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}