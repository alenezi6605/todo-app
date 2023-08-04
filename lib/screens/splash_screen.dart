import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:todo/screens/login_screen.dart';
import 'package:todo/screens/signup_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink, // Set the background color to pink
      body: Center(
        // You can add a logo or any other widgets here to customize the splash screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example: Show a loading spinner while the app is initializing
            SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Todo App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen when the login button is pressed
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.pink),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the signup screen when the signup button is pressed
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 18, color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
