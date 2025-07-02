import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoSection extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Inspirational Journey',
      'url': 'https://youtu.be/2Sm0gy-q8SI?si=Hpp7xBUaPV1IX87H',
      'thumbnail': 'assets/images/video1.jpg',
    },
    {
      'title': 'The Path to Success',
      'url': 'https://youtu.be/wni1vh35wxY?si=UspVaxObOM5Umn65',
      'thumbnail': 'assets/images/video2.jpg',
    },
    {
      'title': 'Mindful Moments',
      'url': 'https://youtu.be/D97zRAqseyY?si=Pz_S5Ix7humxO9kc',
      'thumbnail': 'assets/images/video3.jpg',
    },
    {
      'title': 'Growth and Ambition',
      'url': 'https://youtu.be/bXu-vL9PKy8?si=yP7FO8oBwrPVRb2V',
      'thumbnail': 'assets/images/video4.jpg',
    },
    {
      'title': 'Awakening the Mind',
      'url': 'https://youtu.be/g_uFX1Uayew?si=u9OgN67OpzNeWzqC',
      'thumbnail': 'assets/images/video5.jpg',
    },
    {
      'title': 'Achieving Dreams',
      'url': 'https://youtu.be/W6wVU5b5nQk?si=mZYHOIHJNmc8T0-k',
      'thumbnail': 'assets/images/video6.jpg',
    },
    {
      'title': 'Power of Positivity',
      'url': 'https://youtu.be/Tuw8hxrFBH8?si=KGhf-uOe_jV6HpP8',
      'thumbnail': 'assets/images/video7.jpg',
    },
    {
      'title': 'Unlocking Potential',
      'url': 'https://youtu.be/5YoTP_fO4FI?si=vgULwpuy4lL-pPMO',
      'thumbnail': 'assets/images/video8.jpg',
    },
    {
      'title': 'Inner Strength',
      'url': 'https://youtu.be/Q4kR6vM8xvQ?si=9pQPd98tpTdP6Bnu',
      'thumbnail': 'assets/images/video9.jpg',
    },
    {
      'title': 'Building Resilience',
      'url': 'https://youtu.be/AyPmsFXZIq0?si=Tiev2S34UdKxqXkD',
      'thumbnail': 'assets/images/video10.jpg',
    },
    {
      'title': 'Finding Peace',
      'url': 'https://youtu.be/W937gFzsD-c?si=_4PNMGJS1G_iNcyO',
      'thumbnail': 'assets/images/video11.jpg',
    },
    {
      'title': 'Daily Motivation',
      'url': 'https://youtu.be/jNbRd2MwZBU?si=lu8z5u8r1BPDX7pd',
      'thumbnail': 'assets/images/video12.jpg',
    },
    {
      'title': 'Limitless Mindset',
      'url': 'https://youtu.be/bE2NUEKq_KE?si=3UeSpdU4YeJuzctr',
      'thumbnail': 'assets/images/video13.jpg',
    },
    {
      'title': 'Embracing Challenges',
      'url': 'https://youtu.be/ERClHCOF14c?si=jxhgP31gDc4b3d55',
      'thumbnail': 'assets/images/video14.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Motivational Videos'),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              final url = videos[index]['url'];
              if (url != null) {
                _launchURL(url);
              }
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    videos[index]['thumbnail']!,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      videos[index]['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
