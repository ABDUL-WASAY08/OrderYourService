import 'package:flutter/material.dart';
import 'StyleSheet/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AuthStyles.backgroundGradient,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 24.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    // Top Live Element
                    const SizedBox(height: 100),
                    // Premium Avatar Image with glowing ring (UPAR Shift kar diya)
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // Outer glow ring
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AuthStyles.primaryColor,
                                AuthStyles.primaryLight,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AuthStyles.primaryColor.withOpacity(
                                  0.15,
                                ),
                                blurRadius: 40,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  child: Image.asset(
                                    'lib/Images/logo_mobileproject.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: AuthStyles.primaryLight,
                                        child: const Icon(
                                          Icons.person_rounded,
                                          size: 80,
                                          color: AuthStyles.primaryColor,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Decorative dots around avatar
                        Positioned(
                          top: 5,
                          right: 10,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: AuthStyles.primaryColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: AuthStyles.primaryColor.withOpacity(
                                    0.3,
                                  ),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: AuthStyles.accentColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // 2. Center Content: Text & Slogan (LOGO KE NEECHY)
                Column(
                  children: [
                    const Text(
                      'ORDER SERVICES',
                      style: AuthStyles.mainTitle, // Uses textDark dynamically
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 60,
                      height: 3,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AuthStyles.primaryColor,
                            AuthStyles.primaryLight,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Make The Service Come To Your Home',
                      style: AuthStyles.subtitle, // Uses textMuted dynamically
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                // 3. Bottom Section: Buttons & Navigation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AuthStyles.textMuted.withOpacity(0.2),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: AuthStyles.textMuted.withOpacity(0.7),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: AuthStyles.textMuted.withOpacity(0.2),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Premium Next Button with gradient
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: AuthStyles.buttonGradient,
                        boxShadow: [
                          BoxShadow(
                            color: AuthStyles.primaryColor.withOpacity(0.3),
                            blurRadius: 24,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Icon(Icons.arrow_forward_rounded, size: 22),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
