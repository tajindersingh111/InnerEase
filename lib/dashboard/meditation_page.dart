import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Meditationpage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Guided Meditation for Relaxation',
      'url': 'https://www.youtube.com/watch?v=inpok4MKVLM',
      'thumbnail': 'https://img.youtube.com/vi/inpok4MKVLM/hqdefault.jpg',
    },
    {
      'title': '10-Minute Meditation for Beginners',
      'url': 'https://www.youtube.com/watch?v=O-6f5wQXSu8',
      'thumbnail': 'https://img.youtube.com/vi/O-6f5wQXSu8/hqdefault.jpg',
    },
    {
      'title': 'Mindfulness Meditation',
      'url': 'https://www.youtube.com/watch?v=ZToicYcHIOU',
      'thumbnail': 'https://img.youtube.com/vi/ZToicYcHIOU/hqdefault.jpg',
    },
    {
      'title': 'Deep Meditation Music',
      'url': 'https://www.youtube.com/watch?v=60Gnd8Wy0gE',
      'thumbnail': 'https://img.youtube.com/vi/60Gnd8Wy0gE/hqdefault.jpg',
    },
    {
      'title': 'Meditation for Inner Peace',
      'url': 'https://www.youtube.com/watch?v=dEzbdLn2bJc',
      'thumbnail': 'https://img.youtube.com/vi/dEzbdLn2bJc/hqdefault.jpg',
    },
    {
      'title': '5-Minute Meditation You Can Do Anywhere',
      'url': 'https://www.youtube.com/watch?v=inpok4MKVLM',
      'thumbnail': 'https://img.youtube.com/vi/inpok4MKVLM/hqdefault.jpg',
    },
    {
      'title': 'Stress Relief Meditation',
      'url': 'https://www.youtube.com/watch?v=Jyy0ra2WcQQ',
      'thumbnail': 'https://img.youtube.com/vi/Jyy0ra2WcQQ/hqdefault.jpg',
    },
    {
      'title': 'Yoga for Beginners: Meditation & Relaxation',
      'url': 'https://www.youtube.com/watch?v=dHk0ddTevNA',
      'thumbnail': 'https://img.youtube.com/vi/dHk0ddTevNA/hqdefault.jpg',
    },
    {
      'title': '20-Minute Yoga Nidra Meditation',
      'url': 'https://www.youtube.com/watch?v=M0u9GST_j3s',
      'thumbnail': 'https://img.youtube.com/vi/M0u9GST_j3s/hqdefault.jpg',
    },
    {
      'title': 'Evening Meditation to Clear Mind',
      'url': 'https://www.youtube.com/watch?v=8TDcGYmEgyM',
      'thumbnail': 'https://img.youtube.com/vi/8TDcGYmEgyM/hqdefault.jpg',
    },
    {
      'title': 'Chit Shakti Meditation (Sadhguru)',
      'url': 'https://www.youtube.com/watch?v=EB25RoYGxzY',
      'thumbnail': 'https://img.youtube.com/vi/EB25RoYGxzY/hqdefault.jpg',
    },
    {
      'title': 'Morning Meditation to Start the Day',
      'url': 'https://www.youtube.com/watch?v=oJAbATJCugs',
      'thumbnail': 'https://img.youtube.com/vi/oJAbATJCugs/hqdefault.jpg',
    },
    {
      'title': 'Breathing Meditation',
      'url': 'https://www.youtube.com/watch?v=YVvn8dpSAt0',
      'thumbnail': 'https://img.youtube.com/vi/YVvn8dpSAt0/hqdefault.jpg',
    },
    {
      'title': '10-Minute Loving-Kindness Meditation',
      'url': 'https://www.youtube.com/watch?v=92i5m3tV5XY',
      'thumbnail': 'https://img.youtube.com/vi/92i5m3tV5XY/hqdefault.jpg',
    },
    {
      'title': 'Healing Meditation Music',
      'url': 'https://www.youtube.com/watch?v=1ZYbU82GVz4',
      'thumbnail': 'https://img.youtube.com/vi/1ZYbU82GVz4/hqdefault.jpg',
    },
    {
      'title': 'Self-Compassion Meditation',
      'url': 'https://www.youtube.com/watch?v=K_xTlZGAQzc',
      'thumbnail': 'https://img.youtube.com/vi/K_xTlZGAQzc/hqdefault.jpg',
    },
    {
      'title': 'Self-Love Meditation',
      'url': 'https://www.youtube.com/watch?v=itZMM5gCboo',
      'thumbnail': 'https://img.youtube.com/vi/itZMM5gCboo/hqdefault.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation Videos'),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Open the video in YouTube app or web
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
                      Image.network(
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Importance of Meditation in Daily Life',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '- Reduces Stress: Meditation helps calm the mind and reduce stress, promoting relaxation.\n'
                  '- Enhances Focus: Regular meditation improves concentration and clarity of thought.\n'
                  '- Emotional Health: Meditation fosters emotional balance, reducing anxiety and promoting inner peace.\n'
                  '- Boosts Self-Awareness: Meditation encourages mindfulness, helping you connect with your inner self.\n'
                  '- Better Sleep: Meditation can improve sleep quality by promoting relaxation before bedtime.\n'
                  '- Strengthens Immune System: Studies show that meditation may strengthen the immune system, leading to better overall health.\n'
                  '- Enhances Patience: Regular meditation helps cultivate patience and tolerance in everyday situations.\n'
                  '- Increases Happiness: Meditation promotes a positive outlook on life by reducing negative emotions and fostering a sense of contentment.\n'
                  '- Improves Physical Health: Meditation can lower blood pressure, reduce chronic pain, and improve heart health.',
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
