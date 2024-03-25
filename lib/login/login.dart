

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // ignore: use_super_parameters
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showSignUp = false; // Flag to control Sign Up visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome back!'), // Title of the page
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Padding around the content
        child: Column(
          children: [
            // Centered text with toggle option
            Center(
              child: TextButton(
                onPressed: () => setState(() => _showSignUp = !_showSignUp),
                child: Text(
                  _showSignUp ? 'Already have an account? Sign In' : 'New User? Sign Up',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0), // Spacing between sections

            // Sign Up Form (conditionally displayed)
            if (_showSignUp) _buildSignUpForm(),

            // Sign In Form (always displayed)
            _buildSignInForm(),
          ],
        ),
      ),
    );
  }

  // Builds the Sign Up Form
  Widget _buildSignUpForm() {
    return Form(
      child: Column(
        children: [
          // Email field
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 16.0), // Spacing between fields

          // Password field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          const SizedBox(height: 16.0), // Spacing between fields

          // Confirm password field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Confirm Password'),
          ),
          const SizedBox(height: 16.0), // Spacing between fields

          // Sign Up button
          ElevatedButton(
            onPressed: () {
              // Implement Sign Up logic here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Sign Up functionality under development'),
                ),
              );
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }

  // Builds the Sign In Form
  Widget _buildSignInForm() {
    return Form(
      child: Column(
        children: [
          // Email field
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 16.0), // Spacing between fields

          // Password field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          const SizedBox(height: 16.0), // Spacing between fields

          // Sign In button
          ElevatedButton(
            onPressed: () {
              // Implement Sign In logic here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Sign In functionality under development'),
                ),
              );
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
