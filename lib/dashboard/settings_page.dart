import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for SystemChrome and SystemUiOverlayStyle

class SettingsSection extends StatefulWidget {
  @override
  _SettingsSectionState createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  double _brightness = 0.5;
  double _volume = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Brightness Control
            ExpansionTile(
              title: Text('Brightness Control'),
              leading: Icon(Icons.brightness_6),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adjust the brightness of the app.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      _buildSlider(
                        title: 'Brightness',
                        value: _brightness,
                        onChanged: (value) {
                          setState(() {
                            _brightness = value;
                          });
                          // Adjust system brightness (simulated)
                          SystemChrome.setSystemUIOverlayStyle(
                            SystemUiOverlayStyle(
                              systemNavigationBarColor: Colors.black.withOpacity(_brightness),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Volume Control
            ExpansionTile(
              title: Text('Volume Control'),
              leading: Icon(Icons.volume_up),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adjust the volume of the app.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      _buildSlider(
                        title: 'Volume',
                        value: _volume,
                        onChanged: (value) {
                          setState(() {
                            _volume = value;
                          });
                          // Implement volume control here (you can add functionality here)
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // About the App
            ExpansionTile(
              title: Text('About This App'),
              leading: Icon(Icons.info),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "We're making an app called AshtvakrNiti. It helps people feel less stressed, anxious, and depressed, and gives relaxation to everyone. Our app is made to really help people feel better and less stressed.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Why This App Matters:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Say goodbye to stress and hello to serenity with our innovative app. Your app sounds like a comprehensive solution to address various mental health challenges, including reducing the suicide rate and addressing issues specific to India. By integrating features such as meditation, yoga, parenting sessions, mentorship sessions, and motivational quotes by Moral Bits, our platform can truly make a difference.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Features and Benefits:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "By leveraging these features, individuals experiencing anxiety and depression can find support and resources to improve their mental well-being. With the assurance that our app provides, users will be less likely to resort to suicide, and their levels of anxiety, stress, and depression will decrease significantly.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Parenting Support:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "In the parenting section, we provide guidance to parents on how to effectively support their children, ensuring their anxieties and stress levels are kept in check.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Meditation and Yoga:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Our meditation and yoga features promote calmness and well-being, reducing anger and cultivating a healthy mindset.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Motivational Videos:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Motivational videos provide mental stability and inspire users to make positive changes in their lives.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Audio Content:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Our audio content, including binaural beats, helps users relax quickly and promote mental balance.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Feedback System:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "We gather feedback from users to improve the app and better meet their needs.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Account Section
            ExpansionTile(
              title: Text('Account'),
              leading: Icon(Icons.account_circle),
              children: [
                ListTile(
                  title: Text('Edit Profile'),
                  onTap: () {
                    // Navigate to Edit Profile screen
                    Navigator.pushNamed(context, '/editProfile');
                  },
                ),
                ListTile(
                  title: Text('Change Password'),
                  onTap: () {
                    // Navigate to Change Password screen
                    Navigator.pushNamed(context, '/changePassword');
                  },
                ),
                ListTile(
                  title: Text('Privacy Settings'),
                  onTap: () {
                    // Navigate to Privacy Settings screen
                    Navigator.pushNamed(context, '/privacySettings');
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            // Log Out Section
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Log Out'),
                      content: Text('You have logged out from our app AshtavakraNiti.'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            // Close the dialog and navigate to the home page
                            Navigator.of(context).pop();
                            Navigator.popAndPushNamed(context, '/home');
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20),

            // Help Us Section
            ExpansionTile(
              title: Text('Help Us'),
              leading: Icon(Icons.help),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'For more queries, contact us at:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Samyak Jain: samyakjain@2.cse26@jecrc.ac.in\n'
                            'Shruti Jaiswal: shrutijaizz123@gmail.com\n'
                            'Sarthak Choudary: sarthakchoudary@cse26@jecrc.ac.in\n',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'This project was completed under the mentorship of Mrs. Swati Mam and Mrs. Pooja Mam.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper to build sliders
  Widget _buildSlider({
    required String title,
    required double value,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value,
          min: 0.0,
          max: 1.0,
          onChanged: onChanged,
          activeColor: Colors.deepPurpleAccent,
          inactiveColor: Colors.deepPurpleAccent.withOpacity(0.3),
        ),
      ],
    );
  }
}
