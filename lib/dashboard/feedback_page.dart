import 'package:flutter/material.dart';

class FeedbackSection extends StatefulWidget {
  @override
  _FeedbackSectionState createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _userEmail = '';
  String _feedbackMessage = '';
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Title with Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.feedback, size: 40, color: Colors.orangeAccent),
                  SizedBox(width: 10),
                  Text(
                    'We value your feedback!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Name Input Field
              _buildTextField(
                labelText: 'Your Name',
                icon: Icons.person,
                onSave: (value) => _userName = value ?? '',
              ),

              // Email Input Field
              _buildTextField(
                labelText: 'Your Email',
                icon: Icons.email,
                onSave: (value) => _userEmail = value ?? '',
                isEmail: true,
              ),

              // Feedback Input
              _buildFeedbackField(),

              SizedBox(height: 20),

              // Rating
              Text(
                'Rate Our App',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildRatingStars(),

              SizedBox(height: 30),

              // Submit and Clear Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _submitFeedback,
                    child: Text('Submit Feedback'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _clearForm,
                    child: Text('Clear Form'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to build input fields
  Widget _buildTextField({
    required String labelText,
    required IconData icon,
    required Function(String?) onSave,
    bool isEmail = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, color: Colors.orangeAccent),
          filled: true,
          fillColor: Colors.white.withOpacity(0.9),
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $labelText';
          }
          if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Please enter a valid email';
          }
          return null;
        },
        onSaved: onSave,
      ),
    );
  }

  // Helper to build feedback message input
  Widget _buildFeedbackField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Your Feedback',
        prefixIcon: Icon(Icons.message, color: Colors.orangeAccent),
        filled: true,
        fillColor: Colors.white.withOpacity(0.9),
        border: OutlineInputBorder(),
      ),
      maxLines: 5,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your feedback';
        }
        return null;
      },
      onSaved: (value) {
        _feedbackMessage = value ?? '';
      },
    );
  }

  // Star Rating Builder
  Widget _buildRatingStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Colors.orangeAccent,
            size: 32,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1;
            });
          },
        );
      }),
    );
  }

  // Function to submit feedback
  void _submitFeedback() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Thank you for your feedback!'),
          backgroundColor: Colors.green,
        ),
      );
      // You can send the feedback data to a backend or store it
      print('Name: $_userName');
      print('Email: $_userEmail');
      print('Feedback: $_feedbackMessage');
      print('Rating: $_rating stars');
    }
  }

  // Function to clear form fields
  void _clearForm() {
    _formKey.currentState?.reset();
    setState(() {
      _userName = '';
      _userEmail = '';
      _feedbackMessage = '';
      _rating = 0;
    });
  }
}
