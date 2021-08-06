import 'package:flutter/material.dart';

class DiscriptionsPage extends StatelessWidget {
  DiscriptionsPage({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  final String imagePath;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              
              color: Colors.black.withOpacity(0.1),
            ),
            width: double.infinity,
            height: 250,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
