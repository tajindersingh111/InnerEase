import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:samyak/dashboard/feedback_page.dart';
import 'package:samyak/dashboard/games_page.dart';
import 'package:samyak/dashboard/parenting_page.dart';
import 'package:samyak/dashboard/settings_page.dart';
import 'dashboard/motivation_quotes.dart'; // Importing the motivation quotes file
import 'dashboard/meditation_page.dart';// Importing the meditation fie
import 'dashboard/yoga_page.dart';// Importing the yoga file
import 'dashboard/video_content_page.dart';// Importing the video content file
import 'dashboard/audio_content_page.dart';// Importing the audio content fie
import 'dashboard/games_page.dart';// Imorting the game file
import 'dart:async';
import 'dashboard/parenting_page.dart';// Importing the parenting file
import 'dashboard/feedback_page.dart';// Importing the feedback file
import 'dashboard/settings_page.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GTBIT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/meditation.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome to our app',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent, Colors.cyan],
            tileMode: TileMode.mirror,
          ).createShader(bounds),
          child: Text(
            'GTBIT',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/meditation.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'InnerEase',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildTextField(nameController, 'Name'),
                        SizedBox(height: 16),
                        _buildTextField(passwordController, 'Password', obscureText: true),
                        SizedBox(height: 24),
                        _buildButton('Login', Colors.blueAccent, context),
                        SizedBox(height: 16),
                        _buildButton('Create New Account', Colors.greenAccent, context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
      ),
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildButton(String text, Color color, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => text == 'Login' ? DashboardPage() : CreateNewAccountPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class CreateNewAccountPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _buildTextField(nameController, 'Name'),
            SizedBox(height: 16),
            _buildTextField(dobController, 'Date of Birth'),
            SizedBox(height: 16),
            _buildTextField(phoneController, 'Phone Number', keyboardType: TextInputType.phone),
            SizedBox(height: 16),
            _buildTextField(emailController, 'Email', keyboardType: TextInputType.emailAddress),
            SizedBox(height: 16),
            _buildTextField(codeController, 'Enter Code', keyboardType: TextInputType.number),
            SizedBox(height: 24),
            _buildButton('Submit', Colors.green, context),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText, {bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildButton(String text, Color color, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context); // Navigate back to the previous screen
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.family_restroom, color: Colors.purple),
                  title: Text('Parenting'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ParentingPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.audiotrack, color: Colors.deepOrange),
                  title: Text('Audio Content'),
                  onTap: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(builder: (Context) => AudioPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.video_collection, color: Colors.blue),
                  title: Text('Video Content'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (Context) => VideoSection()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.format_quote, color: Colors.yellow),
                  title: Text('Motivation Quotes'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MotivationQuotesPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.self_improvement, color: Colors.orange),
                  title: Text('Meditation'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Meditationpage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.fitness_center, color: Colors.green),
                  title: Text('Yoga'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YogaPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.videogame_asset, color: Colors.red),
                  title: Text('Games'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (cotext) => GamesSection()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.blueGrey),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsSection()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.feedback, color: Colors.teal),
                  title: Text('Feedback'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (cotext) => FeedbackSection()),
                    );
                  },
                ),
              ],
            ),
            // Positioned(
            //   right: 0,
            //   child: Image.asset('assets/images/arihant.png', width: 100),
            // ),
          ],
        ),
      ),
    );
  }
}
