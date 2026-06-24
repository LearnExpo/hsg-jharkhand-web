import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("About Us", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text(
                "The Bharat Scouts and Guides, Jharkhand, is dedicated to the development of "
                "young people in achieving their full physical, intellectual, emotional, "
                "social, and spiritual potential.",
                style: TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 30),
              // Placeholder for an image or secondary content
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(child: Text("Image Gallery / History Timeline")),
              ),
            ],
          ),
        ),
      ),
    
    );
  }
}