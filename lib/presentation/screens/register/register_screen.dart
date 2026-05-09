import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get your groceries as fast as an hour',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ✅ Phone number field — underline only, no border box
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Country Code Box
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: const Text(
                              '+855',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          const SizedBox(width: 12),

                          // Phone Number Input
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.grey),
                                border: UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text('Or connect with social media'),

                      const SizedBox(height: 20),
                      // Google Sign-In Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: () {
                            // Handle Google sign-in
                          },
                          icon: Image.network(
                            'https://www.google.com/favicon.ico',
                            height: 24,
                            width: 24,
                          ),
                          label: const Text(
                            'Sign in with Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              48,
                              138,
                              255,
                            ),

                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Facebook Sign-In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle Facebook sign-in
                          },
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 24,
                          ),
                          label: const Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              16,
                              84,
                              173,
                            ), // Facebook blue
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
