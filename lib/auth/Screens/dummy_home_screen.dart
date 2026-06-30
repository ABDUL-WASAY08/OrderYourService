import 'package:flutter/material.dart';
import 'StyleSheet/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      'name': 'Cleaning',
      'icon': Icons.cleaning_services_rounded,
      'color': AppStyles.accentBlue,
    },
    {
      'name': 'Plumbing',
      'icon': Icons.plumbing_rounded,
      'color': AppStyles.accentTeal,
    },
    {
      'name': 'Electrical',
      'icon': Icons.electrical_services_rounded,
      'color': AppStyles.accentOrange,
    },
    {
      'name': 'Repair',
      'icon': Icons.home_repair_service_rounded,
      'color': AppStyles.accentGreen,
    },
    {
      'name': 'Pest Control',
      'icon': Icons.bug_report_rounded,
      'color': AppStyles.accentRed,
    },
    {
      'name': 'Painting',
      'icon': Icons.format_paint_rounded,
      'color': AppStyles.accentPink,
    },
    {
      'name': 'Gardening',
      'icon': Icons.local_florist_rounded,
      'color': AppStyles.accentPurple,
    },
    {
      'name': 'Carpentry',
      'icon': Icons.carpenter_rounded,
      'color': AppStyles.accentOrange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.surfaceWhite,

      // ===== PROFESSIONAL APP BAR =====
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 20,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  // Logo / Brand Name
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: AppStyles.buttonGradient,
                      borderRadius: AppStyles.radiusSmall,
                    ),
                    child: const Text(
                      'OS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'OrderServices',
                    style: TextStyle(
                      color: AppStyles.textDark,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.3,
                    ),
                  ),
                  const Spacer(),

                  // Search Bar - Dummy
                  Container(
                    width: 160,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppStyles.surfaceWhite,
                      borderRadius: AppStyles.radiusCircular,
                      border: Border.all(
                        color: AppStyles.textLight.withOpacity(0.15),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        Icon(
                          Icons.search_rounded,
                          color: AppStyles.textLight,
                          size: 18,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Search...',
                          style: AppStyles.bodySmall.copyWith(
                            color: AppStyles.textLight,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: AppStyles.textLight.withOpacity(0.1),
                            borderRadius: AppStyles.radiusSmall,
                          ),
                          child: Text(
                            '⌘K',
                            style: AppStyles.caption.copyWith(
                              color: AppStyles.textLight,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Profile/Account Button
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppStyles.buttonGradient,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppStyles.primaryColor.withOpacity(0.15),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: AppStyles.radiusCircular,
                        child: Container(
                          width: 36,
                          height: 36,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.person_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // ===== BODY =====
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with stats
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available Services',
                        style: AppStyles.headingSmall.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '8 services ready for you',
                        style: AppStyles.bodyMedium.copyWith(
                          color: AppStyles.textLight,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppStyles.primaryColor.withOpacity(0.08),
                      borderRadius: AppStyles.radiusCircular,
                    ),
                    child: Text(
                      'All',
                      style: AppStyles.bodyMedium.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Grid
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.0,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final service = services[index];
                  return _ServiceCard(service: service, onTap: () {});
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),

      // ===== FLOATING ACTION BUTTON =====
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: AppStyles.buttonGradient,
          shape: BoxShape.circle,
          boxShadow: AppStyles.buttonShadow,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          child: const Icon(Icons.add_rounded, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}

// ===== SERVICE CARD WIDGET =====
class _ServiceCard extends StatelessWidget {
  final Map<String, dynamic> service;
  final VoidCallback onTap;

  const _ServiceCard({required this.service, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppStyles.radiusLarge,
        boxShadow: AppStyles.cardShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppStyles.radiusLarge,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon Container
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: (service['color'] as Color).withOpacity(0.08),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: (service['color'] as Color).withOpacity(0.15),
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    service['icon'] as IconData,
                    color: service['color'] as Color,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 14),
                // Service Name
                Text(
                  service['name'] as String,
                  style: AppStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppStyles.textDark,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                // Book Now Button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor.withOpacity(0.06),
                    borderRadius: AppStyles.radiusCircular,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Book Now',
                        style: AppStyles.bodySmall.copyWith(
                          color: AppStyles.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: AppStyles.primaryColor,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
