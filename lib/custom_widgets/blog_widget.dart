import 'package:blog_app/pages/discriptions_page.dart';
import 'package:flutter/material.dart';

Widget widgetBlog({
  required String imagePath,
  required String title,
  required String subtitle,
  required BuildContext context,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DiscriptionsPage(
                  imagePath: imagePath,
                  title: title,
                  subtitle: subtitle,
                ),
              ),
            );
          },
          child: Container(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.1),
            ),
            width: double.infinity,
            height: 250,
          ),
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
        Container(
          width: 50,
          child: Divider(
            color: Colors.black,
            thickness: 3,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
