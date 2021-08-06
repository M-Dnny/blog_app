import 'package:blog_app/pages/blog_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME TO THE BLOG',
                  style: TextStyle(
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset('images/blog_welcome.png'),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log In',
                  ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(200, 50),
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey[400],
                      elevation: 5),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlogPage(datafromLoginPage: 'The Blog',),
                      ),
                    );
                  },
                  child: Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[900],
                      minimumSize: Size(200, 50),
                      elevation: 5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
