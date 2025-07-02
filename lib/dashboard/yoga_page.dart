import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YogaPage extends StatelessWidget {
  final List<Map<String, String>> yogaVideos = [
    {
      'title': 'Anulom Vilom Pranayama',
      'url': 'https://www.youtube.com/watch?v=H7g1BMalpdw',
    },
    {
      'title': 'Bhastrika Pranayama',
      'url': 'https://www.youtube.com/watch?v=6K0bslmvhnk',
    },
    {
      'title': 'Surya Namaskar (Sun Salutation)',
      'url': 'https://www.youtube.com/watch?v=VaoV1PrYft4',
    },
    {
      'title': 'Basic Yoga Assan',
      'url': 'https://www.youtube.com/watch?v=149Iac5fmoE',
    },
    {
      'title': 'Kapalbhati Pranayama',
      'url': 'https://www.youtube.com/watch?v=AtG7cx6p7DY',
    },
    {
      'title': 'Ashtanga Yoga',
      'url': 'https://www.youtube.com/watch?v=O4D76Jhwnt8',
    },
    {
      'title': 'Hatha Yoga Session',
      'url': 'https://www.youtube.com/watch?v=uiXAIgurwJU',
    },
    {
      'title': 'Yin Yoga for Deep Relaxation',
      'url': 'https://www.youtube.com/watch?v=CY255jk60AM',
    },
    {
      'title': 'Yoga for Flexibility',
      'url': 'https://www.youtube.com/watch?v=ScxPABG7QJk',
    },
    {
      'title': 'Iyengar Yoga for Strength',
      'url': 'https://www.youtube.com/watch?v=pla1cEI5DnE',
    },
    {
      'title': 'Power Yoga for Weight Loss',
      'url': 'https://www.youtube.com/watch?v=m756Gz8de4M',
    },
    {
      'title': 'Sivananda Yoga Class',
      'url': 'https://www.youtube.com/watch?v=FFlOej4-P7Q',
    },
    {
      'title': 'Restorative Yoga for Stress Relief',
      'url': 'https://www.youtube.com/watch?v=RQyX48NtDrQ&list=PLui6Eyny-UzxghGvVE7V_6YsZ7rh5r1Fx',
    },
    {
      'title': 'Yoga Nidra Meditation',
      'url': 'https://www.youtube.com/watch?v=FFlOej4-P7Q',
    },
    {
      'title': 'Yoga for Strength and Balance',
      'url': 'https://www.youtube.com/watch?v=XN3JB67-a_k',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga and Pranayama Videos'),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: yogaVideos.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Open the video in YouTube app or web
                  final url = yogaVideos[index]['url'];
                  if (url != null) {
                    _launchURL(url);
                  }
                },
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      yogaVideos[index]['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.play_circle_fill, color: Colors.blue),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Importance of Yoga in Daily Life',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '- Enhances Physical Flexibility: Regular yoga practice increases flexibility and helps in maintaining body posture.\n'
                  '- Improves Strength and Balance: Yoga strengthens muscles and improves overall body balance, reducing the risk of injuries.\n'
                  '- Promotes Mental Clarity: Yoga encourages mindfulness and meditation, leading to better focus and mental clarity.\n'
                  '- Reduces Stress: Yoga helps in stress relief by promoting relaxation and reducing cortisol levels in the body.\n'
                  '- Boosts Immunity: Consistent practice of yoga improves blood circulation, strengthens the immune system, and enhances overall health.\n'
                  '- Encourages Healthy Lifestyle: Yoga promotes a balanced lifestyle, encouraging mindful eating, better sleep, and healthy habits.\n'
                  '- Enhances Respiratory Function: Pranayama (breathing exercises) in yoga improves lung capacity and respiratory function.\n'
                  '- Increases Energy Levels: Yoga helps in revitalizing the body and mind, increasing overall energy levels throughout the day.\n'
                  '- Supports Emotional Health: Yoga fosters emotional balance, reducing anxiety, depression, and enhancing inner peace.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Types of Yoga and Their Explanation',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '- Hatha Yoga: Focuses on physical postures (asanas) and breath control (pranayama) to create harmony between body and mind.\n'
                  '- Vinyasa Yoga: Involves fluid transitions between poses, synchronized with breathing, to create a dynamic flow.\n'
                  '- Ashtanga Yoga: A rigorous style of yoga that follows a specific sequence of postures, emphasizing strength and endurance.\n'
                  '- Iyengar Yoga: Focuses on precision and alignment in poses, often using props like blocks and straps to help practitioners.\n'
                  '- Bikram Yoga: A sequence of 26 specific postures practiced in a heated room to promote flexibility and detoxification.\n'
                  '- Yin Yoga: A slower-paced style of yoga, focusing on deep stretching and relaxation of connective tissues.\n'
                  '- Restorative Yoga: Involves gentle poses supported by props to promote deep relaxation and stress relief.\n'
                  '- Kundalini Yoga: Combines dynamic movements, breathing exercises, and chanting to awaken spiritual energy.\n'
                  '- Power Yoga: A vigorous, fitness-based approach to Vinyasa-style yoga, focusing on strength and endurance.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    // Open the YouTube video in YouTube app or web
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
