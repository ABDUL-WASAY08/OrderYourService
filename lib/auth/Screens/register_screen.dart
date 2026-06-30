// register_screen.dart
import 'package:flutter/material.dart';
import 'StyleSheet/register_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Scaffold ko transparent kiya taake container ka gradient nazar aaye
      backgroundColor: Colors.transparent,

      // 2. Poori body ko Container mian wrap kar ke gradient lagaya
      body: Container(
        decoration: const BoxDecoration(
          gradient: AuthStyles.backgroundGradient, // 👈 Hamara premium gradient
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Minimalist Visual Element (Optional Accent Icon Top Block)
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: AuthStyles.primaryLight,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.bolt,
                        color: AuthStyles.primaryColor,
                        size: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Header Group
                  const Text(
                    'Register account',
                    style: AuthStyles.mainTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Join us today and enjoy seamless access.',
                    style: AuthStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  // Full Name Field (With Container for Floating Shadow Effect)
                  Container(
                    decoration: AuthStyles.inputShadowDecoration,
                    child: TextField(
                      decoration: AuthStyles.premiumInput(
                        label: 'Full Name',
                        icon: Icons.person_outline_rounded,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),

                  // Email Field
                  Container(
                    decoration: AuthStyles.inputShadowDecoration,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: AuthStyles.premiumInput(
                        label: 'Email Address',
                        icon: Icons.mail_outline_rounded,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),

                  // Password Field
                  Container(
                    decoration: AuthStyles.inputShadowDecoration,
                    child: TextField(
                      obscureText: true,
                      decoration: AuthStyles.premiumInput(
                        label: 'Password',
                        icon: Icons.lock_open_rounded,
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Upgraded Action Button with Wrapper Shadow
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AuthStyles.primaryColor.withValues(alpha: 0.3),
                          blurRadius: 24,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      style: AuthStyles.premiumButton,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 36),

                  // Clean Footer Link Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: AuthStyles.textMuted,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/login'),
                        child: const Text(
                          'Sign In',
                          style: AuthStyles.linkText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
