// auth_styles.dart
import 'package:flutter/material.dart';

class AuthStyles {
  // Enhanced Color Palette
  static const Color primaryColor = Color(0xFF6366F1); // Indigo-500
  static const Color primaryLight = Color(0xFFA5B4FC); // Indigo-300
  static const Color primaryDark = Color(0xFF4F46E5); // Indigo-600
  static const Color accentColor = Color(0xFF8B5CF6); // Violet-500
  static const Color textDark = Color(0xFF0F172A);
  static const Color textMuted = Color(0xFF64748B);
  static const Color surfaceWhite = Color(0xFFFAFAFA);

  // Premium Gradient Background
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFE0E7FF), // Indigo-100
      Color(0xFFF5F3FF), // Violet-50
      Colors.white,
    ],
    stops: [0.0, 0.4, 0.8],
  );

  // Gradient for buttons
  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, accentColor],
  );

  // Typography with enhanced style
  static const TextStyle mainTitle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w800,
    color: textDark,
    letterSpacing: -1.2,
    height: 1.1,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 15,
    color: textMuted,
    fontWeight: FontWeight.w400,
    height: 1.6,
    letterSpacing: 0.2,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: primaryColor,
    letterSpacing: 0.3,
  );

  // Enhanced Input Decoration
  static InputDecoration premiumInput({
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        color: textMuted,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
      ),
      prefixIcon: Icon(icon, color: textMuted, size: 20),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.red, width: 1.5),
      ),
    );
  }

  // Card-like container decoration
  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF1E293B).withValues(alpha: 0.06),
        blurRadius: 30,
        offset: const Offset(0, 12),
        spreadRadius: -4,
      ),
    ],
  );

  static BoxDecoration inputShadowDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF1E293B).withValues(alpha: 0.06),
        blurRadius: 20,
        offset: const Offset(0, 8),
        spreadRadius: -2,
      ),
    ],
  );

  static BoxDecoration glassDecoration = BoxDecoration(
    color: Colors.white.withValues(alpha: 0.75),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(color: Colors.white.withValues(alpha: 0.8), width: 1),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF1E293B).withValues(alpha: 0.05),
        blurRadius: 18,
        offset: const Offset(0, 8),
      ),
    ],
  );

  // Premium Button Style
  static ButtonStyle premiumButton = ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.3,
    ),
  );
}
