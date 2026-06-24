import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/footer.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Activity Gallery", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics:  NeverScrollableScrollPhysics(),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 600 ? 1 : 3, // 3 items per row on desktop
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.5,
              ),
              itemCount: 6, // Number of placeholder images
              itemBuilder: (context, index) => Container(
                color: Colors.grey[300],
                child: Center(child: Text("Event ${index + 1}")),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}