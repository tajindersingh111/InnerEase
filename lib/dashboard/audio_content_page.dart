import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AudioPage extends StatelessWidget {
  final List<Map<String, String>> audioTracks = [
    {
      'title': 'Hanuman Chalisa',
      'url': 'https://open.spotify.com/track/6H7fLdt0AeWpuxUKXuXWrx?si=64e336016d0c47d5',
    },
    {
      'title': 'Binaural Beats for Focus',
      'url': 'https://open.spotify.com/track/33xLNtMvaTOQFE8qce9A4Z?si=f51ccf68770d46c6',
    },
    {
      'title': 'Gayatri Mantra',
      'url': 'https://open.spotify.com/track/5Y2Ufim8HBcRxX76xdT84d?si=21ba69b2734647d5',
    },
    {
      'title': 'Shiv Tandav Stotram',
      'url': 'https://open.spotify.com/track/6NFAlpTFpLrYBrsFuiloH3?si=162a35c212804a75',
    },
    {
      'title': 'Om Namah Shivaya',
      'url': 'https://open.spotify.com/track/2K3TsCNBSv0UwFixqZPzVA?si=9cfb33a0c13a4413',
    },
    {
      'title': 'Vishnu Sahasranamam',
      'url': 'https://open.spotify.com/track/7wGmR3kbL1mUuJDiKwIN2H',
    },
    {
      'title': 'Bhagavad Gita Chanting',
      'url': 'https://open.spotify.com/episode/7cUOuLoBAEWnUjSuEQT8Zk?si=54bfa72bc9764102',
    },
    {
      'title': 'Krishna Bhajan',
      'url': 'https://open.spotify.com/track/0CdMnyqGxBzJAQHL6Rr57T?si=283b8189c9dc4c45',
    },
    {
      'title': 'Durga Chalisa',
      'url': 'https://open.spotify.com/track/6BufHx5yFQf2KRedlCIGOV?si=1cbf756a96024963',
    },
    {
      'title': 'Bajrang Band',
      'url': 'https://open.spotify.com/track/7iVA0k8Jde4078tDtQoKr3?si=13cc48551e6d4e60',
    },
    {
      'title': 'Relaxing Binaural Beats',
      'url': 'https://open.spotify.com/track/7rb52TuZJZ56Y3A7uogNWn',
    },
    {
      'title': 'Om Chanting',
      'url': 'https://open.spotify.com/track/7FrvAIKa4V5Vr9kbhMrv3y?si=dff040d19b524602',
    },
    {
      'title': 'Shiva Bhajan',
      'url': 'https://open.spotify.com/track/6DwBCjospi1c9WsRVfoCwN?si=ff92992d8be3469d',
    },
    {
      'title': 'Lakshmi Mantra',
      'url': 'https://open.spotify.com/track/6zQpBVXilFdWJnlDlNE5jO?si=479d677a49ea4141'
    },
    {
      'title': 'Saraswati Vandana',
      'url': 'https://open.spotify.com/track/7uP7oIAvEW8KVnIT00LlCT?si=6049f9b0baee4351',
    },
    {
      'title': 'Relaxing Piano for Meditation',
      'url': 'https://open.spotify.com/track/6Mkn9M8PfECmvvw89OaxLH?si=74bc39a439744e03',
    },
    {
      'title': 'Relaxing Nature Sounds',
      'url': 'https://open.spotify.com/track/5eW4SXNWCjC7KVd6nMAwAC?si=02651655595a403e',
    },
    {
      'title': 'Meditation Music',
      'url': 'https://open.spotify.com/track/7FrvAIKa4V5Vr9kbhMrv3y?si=9869459678e4449a',
    },
    {
      'title': 'Bhajan Sandhya',
      'url': 'https://open.spotify.com/track/6cdbajXPPYLZpAD6o8ws19?si=bd66643cf8194f52',
    },
    {
      'title': 'Ram Bhajan',
      'url': 'https://open.spotify.com/track/2mb6QJdT8t55M9Qzpkb5sa?si=bc14d21f5ba8402b',
    },
    {
      'title': 'Vedic Chants for Relaxation',
      'url': 'https://open.spotify.com/track/4U75nXbmmKZkoJj6KWFlCY?si=cd6531b32e944422',
    },
    {
      'title': 'Meditative Flute Music',
      'url': 'https://open.spotify.com/track/4vv1Q4nFh8S9jW8rwlDP5Z?si=a4d88de0aee343db',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Section'),
      ),
      body: ListView.builder(
        itemCount: audioTracks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(audioTracks[index]['title']!),
            onTap: () {
              _launchURL(audioTracks[index]['url']!);
            },
            leading: Icon(Icons.audiotrack, color: Colors.blue),
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
