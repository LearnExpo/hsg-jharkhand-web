import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/footer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600), // Limits width on desktop
            padding: const EdgeInsets.all(40),
            child: Column(
              
              children: [
                const Text("Get In Touch", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                TextFormField(decoration: const InputDecoration(labelText: "Full Name", border: OutlineInputBorder())),
                const SizedBox(height: 20),
                TextFormField(decoration: const InputDecoration(labelText: "Email", border: OutlineInputBorder())),
                const SizedBox(height: 20),
                TextFormField(maxLines: 4, decoration: const InputDecoration(labelText: "Message", border: OutlineInputBorder())),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {}, // Future: Add logic to send email/data
                    child: const Text("Send Message", style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    
    );
  }
}