// login_screen.dart
import 'package:flutter/material.dart';
import 'StyleSheet/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AuthStyles.backgroundGradient,
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
                  // Enhanced Premium Logo Block with Animated Ring
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer glowing ring
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AuthStyles.primaryColor,
                              AuthStyles.accentColor,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AuthStyles.primaryColor.withValues(
                                alpha: 0.2,
                              ),
                              blurRadius: 30,
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
                            child: const Icon(
                              Icons.lock_person_rounded,
                              color: AuthStyles.primaryColor,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      // Decorative floating dot
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: AuthStyles.accentColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AuthStyles.accentColor.withValues(
                                  alpha: 0.4,
                                ),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),

                  // Enhanced Header with Subtitle Accent
                  Column(
                    children: [
                      const Text(
                        'Welcome Back',
                        style: AuthStyles.mainTitle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 40,
                        height: 3,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AuthStyles.primaryColor,
                              AuthStyles.accentColor,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Sign in to continue your premium experience',
                        style: AuthStyles.subtitle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Enhanced Email Field with Glass Morphism Effect
                  Container(
                    decoration: AuthStyles.glassDecoration,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: AuthStyles.premiumInput(
                        label: 'Email Address',
                        icon: Icons.email_outlined,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),

                  // Enhanced Password Field
                  Container(
                    decoration: AuthStyles.glassDecoration,
                    child: TextField(
                      obscureText: true,
                      decoration: AuthStyles.premiumInput(
                        label: 'Password',
                        icon: Icons.lock_outline_rounded,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Forgot Password with Premium Animation
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Text(
                          'Forgot Password?',
                          style: AuthStyles.linkText.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Premium Sign In Button with Gradient & Glass Effect
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: AuthStyles.buttonGradient,
                      boxShadow: [
                        BoxShadow(
                          color: AuthStyles.primaryColor.withValues(alpha: 0.3),
                          blurRadius: 25,
                          offset: const Offset(0, 12),
                          spreadRadius: -2,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Login logic
                        Navigator.pushReplacementNamed(context, '/home');
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
                            'Sign In',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.arrow_forward_rounded, size: 22),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Enhanced Footer with Social or Divider Option
                  Column(
                    children: [
                      // Or divider with "or continue with"
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withOpacity(0.3),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'or continue with',
                              style: TextStyle(
                                color: AuthStyles.textMuted.withValues(
                                  alpha: 0.6,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withValues(alpha: 0.3),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Social Login Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocialButton(icon: Icons.apple, onTap: () {}),
                          const SizedBox(width: 16),
                          _buildSocialButton(
                            icon: Icons.g_mobiledata_rounded,
                            onTap: () {},
                          ),
                          const SizedBox(width: 16),
                          _buildSocialButton(
                            icon: Icons.facebook,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  // Sign Up Link with Premium Style
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: AuthStyles.textMuted,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AuthStyles.primaryColor,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
                            style: AuthStyles.linkText.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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

  // Social Login Button Widget
  Widget _buildSocialButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: Colors.grey.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Icon(icon, color: AuthStyles.textDark, size: 24),
      ),
    );
  }
}
