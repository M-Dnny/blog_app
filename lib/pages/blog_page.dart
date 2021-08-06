import 'package:blog_app/custom_widgets/blog_widget.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  BlogPage({required this.datafromLoginPage});
  final String datafromLoginPage;

  List<Widget> widgetBlogList({required BuildContext context}) => [
        widgetBlog(
          imagePath: "images/blog.png",
          title: "Blog Number 1 ",
          subtitle: "Welcome Home...",
          context: context,
        ),
        widgetBlog(
          imagePath: "images/blog.png",
          title: "Blog Number 2",
          subtitle: "Welcome Home...",
          context: context,
        ),
        widgetBlog(
          imagePath: "images/blog.png",
          title: "Blog Number 3",
          subtitle: "Welcome Home...",
          context: context,
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          datafromLoginPage,
          style: TextStyle(
              letterSpacing: 2,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...widgetBlogList(context: context),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms and Conditions',
                ),
                style: TextButton.styleFrom(
                    primary: Colors.blueGrey[900],
                    minimumSize: Size(double.infinity, 40)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sign Out',
                ),
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(double.infinity, 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
