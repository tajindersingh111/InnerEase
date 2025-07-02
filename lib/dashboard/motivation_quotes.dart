import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivation Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MotivationQuotesPage(),
    );
  }
}

class MotivationQuotesPage extends StatefulWidget {
  @override
  _MotivationQuotesPageState createState() => _MotivationQuotesPageState();
}

class _MotivationQuotesPageState extends State<MotivationQuotesPage> {
  final List<Map<String, String>> quotes = [
    {"quote": "The only limit to our realization of tomorrow is our doubts of today.", "meaning": "Our self-doubt and fears are the biggest barriers to achieving our dreams."},
    {"quote": "Do not watch the clock. Do what it does. Keep going.", "meaning": "Persistence and patience are key to success, just like how a clock keeps moving forward."},
    {"quote": "Success is not final, failure is not fatal: It is the courage to continue that counts.", "meaning": "Neither success nor failure is permanent; what matters is the courage to keep going."},
    {"quote": "Act as if what you do makes a difference. It does.", "meaning": "Your actions matter and can create positive changes, no matter how small."},
    {"quote": "The harder the conflict, the greater the triumph.", "meaning": "Greater challenges lead to more meaningful and rewarding victories."},
    {"quote": "Your limitation—it's only your imagination.", "meaning": "The only real limit to your potential is the limits you place on your imagination."},
    {"quote": "Push yourself, because no one else is going to do it for you.", "meaning": "Self-motivation is essential because no one else can push you to reach your goals."},
    {"quote": "Great things never come from comfort zones.", "meaning": "To achieve greatness, you must step out of your comfort zone and embrace challenges."},
    {"quote": "Dream it. Wish it. Do it.", "meaning": "Turning dreams into reality requires taking action, not just wishing for it."},
    {"quote": "Success doesn’t just find you. You have to go out and get it.", "meaning": "Success requires effort, determination, and actively pursuing your goals."},
    {"quote": "Dream bigger. Do bigger.", "meaning": "To achieve great things, aim high and take bold actions."},
    {"quote": "Don’t stop when you’re tired. Stop when you’re done.", "meaning": "Perseverance is key—keep going until you achieve your goal."},
    {"quote": "Wake up with determination. Go to bed with satisfaction.", "meaning": "Start your day with a clear goal and end it knowing you’ve done your best."},
    {"quote": "Do something today that your future self will thank you for.", "meaning": "Make decisions now that will lead to a better and more successful future."},
    {"quote": "Little things make big days.", "meaning": "Small actions and steps accumulate into significant results over time."},
    {"quote": "It’s going to be hard, but hard does not mean impossible.", "meaning": "Challenges are difficult but not insurmountable. Keep pushing forward."},
    {"quote": "Don’t wait for opportunity. Create it.", "meaning": "Be proactive and take the initiative to create your own opportunities."},
    {"quote": "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.", "meaning": "Challenges reveal our inner strength and resilience."},
    {"quote": "The key to success is to focus on goals, not obstacles.", "meaning": "Concentrate on what you want to achieve, not the hurdles in your way."},
    {"quote": "Dream it. Believe it. Build it.", "meaning": "To make dreams come true, you must believe in them and take consistent actions."},
    {"quote": "Opportunities don’t happen. You create them.", "meaning": "Success comes from actively creating and pursuing opportunities."},
    {"quote": "Success is not how high you have climbed, but how you make a positive difference to the world.", "meaning": "True success is measured by the positive impact you have on others."},
    {"quote": "Your passion is waiting for your courage to catch up.", "meaning": "Pursue your passions fearlessly; courage unlocks their potential."},
    {"quote": "No one is to blame for your future situation but yourself. If you want to be successful, then become successful.", "meaning": "Take responsibility for your future—your actions determine your success."},
    {"quote": "Your time is limited, so don’t waste it living someone else’s life.", "meaning": "Live authentically and pursue your own dreams instead of conforming to others' expectations."},
    {"quote": "There are no limits to what you can accomplish, except the limits you place on your own thinking.", "meaning": "The only barriers to success are the mental limits we set for ourselves."},
    {"quote": "Don’t let yesterday take up too much of today.", "meaning": "Learn from the past but focus on the present to make the most of today."},
    {"quote": "You only live once, but if you do it right, once is enough.", "meaning": "Live life fully and meaningfully, making the most of every moment."},
    {"quote": "Whether you think you can or think you can’t, you’re right.", "meaning": "Your mindset and belief in yourself play a critical role in achieving success."},
    {"quote": "Everything you’ve ever wanted is on the other side of fear.", "meaning": "Overcoming fear is essential to achieving your dreams and aspirations."},
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Motivation Quotes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: (quotes.length / 3).ceil(),
              itemBuilder: (context, index) {
                final startIndex = index * 3;
                final endIndex = (startIndex + 3).clamp(0, quotes.length);
                final currentQuotes = quotes.sublist(startIndex, endIndex);

                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: currentQuotes.map((quoteData) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Column(
                          children: [
                            Text(
                              quoteData['quote'] ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              quoteData['meaning'] ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text('Previous'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
