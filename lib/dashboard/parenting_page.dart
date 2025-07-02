import 'package:flutter/material.dart';

class ParentingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parenting Guide'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Parenting During Anxiety and Stress',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Parenting is a lifelong journey filled with many responsibilities, and one of the most critical moments occurs when children experience anxiety and stress. '
                  'These emotional states can arise from numerous factors, including school pressure, social situations, family dynamics, or even world events. '
                  'In such times, it becomes imperative for parents to offer the right support, guidance, and comfort to their children. '
                  'By fostering a nurturing environment, parents can help their children manage emotions and cope with difficult situations more effectively.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),

            // 1st Section: Empathy and Understanding
            _buildHighlightedSection(
              '1. Empathy and Understanding',
              'Empathy is the bedrock of effective parenting during anxiety or stress. '
                  'Children are often unable to express their emotions fully or understand the reasons behind their feelings. '
                  'As a parent, your role is to provide support without judgment, allowing them to feel heard and understood.\n\n'
                  '• Active Listening: Engage in active listening when your child shares their concerns. Refrain from interrupting or dismissing their feelings. '
                  'This validates their emotions and gives them the courage to communicate openly.\n'
                  '• Validate Their Feelings: It’s important to acknowledge your child’s emotions. Statements like, "I understand you are upset," show empathy and encourage them to share more.\n'
                  '• Be Patient: Sometimes children need time to open up about what’s troubling them. Patience is essential in ensuring that they feel comfortable enough to talk when they are ready.',
            ),

            // 2nd Section: Building a Safe Environment
            _buildHighlightedSection(
              '2. Building a Safe and Comforting Environment',
              'Children need a physical and emotional environment that helps them feel secure. This becomes even more crucial when they are feeling anxious or stressed. '
                  'Creating a "safe space" for your child, both emotionally and physically, allows them to process their feelings in a healthy way.\n\n'
                  '• Comfort in Familiarity: Maintain a routine that is familiar to the child, as consistency brings comfort. Knowing what to expect can reduce feelings of insecurity.\n'
                  '• Safe Zones: Dedicate a specific area in your home, like a cozy corner or a favorite room, where your child can retreat when they need calm. Equip it with items that make them feel safe, such as books, blankets, or soft music.',
            ),

            // 3rd Section: Encouraging Positive Communication
            _buildHighlightedSection(
              '3. Encouraging Positive Communication',
              'Communication is vital in helping children understand their emotions and seek guidance. Parents should actively promote open dialogue without criticism.\n\n'
                  '• Open-Ended Questions: Ask your child open-ended questions like, "What’s on your mind today?" instead of yes or no questions. This encourages them to think and share more.\n'
                  '• Express Your Own Emotions: Sharing your own feelings of stress or anxiety, when appropriate, can normalize these emotions for your child. This helps them see that it’s okay to talk about how they feel.',
            ),

            // 4th Section: Engaging in Stress-Relieving Activities
            _buildHighlightedSection(
              '4. Engaging in Stress-Relieving Activities',
              'Physical, creative, and mindful activities can be incredibly beneficial for children during anxious times. They serve as outlets for stress and allow children to channel their energy productively.\n\n'
                  '• Physical Play: Encourage outdoor games or activities such as biking, running, or playing at the park. Physical activity releases endorphins that naturally reduce stress.\n'
                  '• Creative Arts: Activities like painting, drawing, or crafting provide a way for children to express emotions non-verbally. These creative outlets can serve as a therapeutic escape.\n'
                  '• Mindfulness Exercises: Teach your child deep breathing techniques or simple mindfulness exercises. Sitting together and practicing breathing exercises can calm both the child and the parent, reinforcing emotional bonding.',
            ),

            // 5th Section: Managing Screen Time
            _buildHighlightedSection(
              '5. Managing Screen Time and Social Media Influence',
              'Excessive screen time, especially on social media platforms, can contribute to anxiety in children. It’s crucial for parents to monitor and manage their child’s screen time effectively.\n\n'
                  '• Set Screen Limits: Establish daily screen time limits for your child, ensuring that they balance online activities with offline hobbies.\n'
                  '• Encourage Offline Interaction: Make sure your child engages in face-to-face interactions with friends and family. Real-world connections can reduce the sense of isolation that social media may induce.',
            ),

            // 6th Section: Importance of a Routine
            _buildHighlightedSection(
              '6. Importance of Establishing a Routine',
              'Children thrive in structured environments, and during stressful times, a predictable routine can offer them a sense of stability and safety.\n\n'
                  '• Consistent Schedules: Create a daily schedule that includes time for school, play, meals, and rest. Consistency helps children feel more secure in their surroundings.\n'
                  '• Include Fun Breaks: Make sure the routine includes fun breaks where the child can unwind, play, or engage in their favorite hobby.',
            ),

            // 7th Section: Understanding Developmental Needs
            _buildHighlightedSection(
              '7. Understanding Developmental Needs During Stress',
              'It’s important for parents to understand that anxiety can manifest differently depending on the child’s age. '
                  'Toddlers, school-aged children, and teenagers each have unique developmental needs that should be addressed individually.\n\n'
                  '• Toddlers: Reassure toddlers through physical closeness and affection. Anxiety may cause them to regress, so offer extra support without judgment.\n'
                  '• School-Aged Children: School-aged children often worry about peer pressure or academic challenges. Help them find healthy coping strategies, like journaling or talking.\n'
                  '• Teenagers: Adolescents can experience significant stress from social or academic pressures. Maintain open dialogue and give them space when needed while ensuring they know you are always available for support.',
            ),

            // 8th Section: Long-Term Benefits of Mindful Parenting
            _buildHighlightedSection(
              '8. Long-Term Benefits of Mindful Parenting',
              'Parenting with mindfulness and empathy during stressful times can have lasting benefits for both you and your child. '
                  'It can strengthen the parent-child bond, enhance communication, and equip children with life-long coping mechanisms.\n\n'
                  '• Emotional Resilience: By providing support, parents help children develop resilience and adaptability to life’s challenges.\n'
                  '• Confidence and Trust: A child raised in a loving and understanding environment is more likely to develop self-confidence and trust in their own ability to overcome hardships.\n'
                  '• Lifelong Coping Strategies: Teaching children how to handle anxiety and stress through healthy strategies will benefit them not only now but also into adulthood.',
            ),

            SizedBox(height: 16),
            Text(
              'Conclusion',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Parenting through anxiety and stress requires empathy, patience, and understanding. '
                  'By creating a supportive environment, promoting healthy communication, engaging in stress-relieving activities, and fostering emotional resilience, '
                  'parents can guide their children through difficult emotional landscapes. '
                  'The lessons and coping mechanisms children learn during these times will equip them with tools to navigate future challenges with greater confidence and strength.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHighlightedSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ParentingPage(),
  ));
}
