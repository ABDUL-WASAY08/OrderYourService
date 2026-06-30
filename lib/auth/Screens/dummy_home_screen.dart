import 'package:flutter/material.dart';
// Note: Apne project ke mutabiq AuthStyles ka sahi path import karein
import 'StyleSheet/register_screen.dart';

class DummyHomeScreen extends StatelessWidget {
  const DummyHomeScreen({super.key});

  // Dummy data array for services
  final List<Map<String, dynamic>> services = const [
    {
      'name': 'Home Cleaning',
      'icon': Icons.cleaning_services_rounded,
      'color': Color(0xFF3B82F6),
    },
    {
      'name': 'Plumbing',
      'icon': Icons.plumbing_rounded,
      'color': Color(0xFFEF4444),
    },
    {
      'name': 'Electrician',
      'icon': Icons.electrical_services_rounded,
      'color': Color(0xFFF59E0B),
    },
    {
      'name': 'Appliance Repair',
      'icon': Icons.home_repair_service_rounded,
      'color': Color(0xFF10B981),
    },
    {
      'name': 'Pest Control',
      'icon': Icons.bug_report_rounded,
      'color': Color(0xFF6366F1),
    },
    {
      'name': 'Home Painting',
      'icon': Icons.format_paint_rounded,
      'color': Color(0xFFEC4899),
    },
    {
      'name': 'Gardening',
      'icon': Icons.local_florist_rounded,
      'color': Color(0xFF84CC16),
    },
    {
      'name': 'Carpentry',
      'icon': Icons.carpenter_rounded,
      'color': Color(0xFF14B8A6),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AuthStyles.surfaceWhite,

      // 1. Customized AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          'OrderServices',
          style: TextStyle(
            color: AuthStyles.textDark,
            fontWeight: FontWeight.w800,
            fontSize: 18,
            letterSpacing: -0.5,
          ),
        ),
        actions: [
          // Dummy Search Bar
          Container(
            width: 180,
            height: 40,
            margin: const EdgeInsets.only(right: 8),
            child: TextField(
              enabled: false, // Dummy functionality
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(
                  color: AuthStyles.textMuted,
                  fontSize: 13,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AuthStyles.textMuted,
                  size: 18,
                ),
                filled: true,
                fillColor: AuthStyles.surfaceWhite,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // Account Settings Button
          IconButton(
            icon: const Icon(
              Icons.manage_accounts_rounded,
              color: AuthStyles.primaryColor,
            ),
            onPressed: () {
              // Action for account settings (Dummy for now)
            },
          ),
          const SizedBox(width: 8),
        ],
      ),

      // 2. Grid Body
      body: Container(
        decoration: const BoxDecoration(
          gradient: AuthStyles.backgroundGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 4, bottom: 16),
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: AuthStyles.textDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 items per row
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 1.1, // Card layout aspect ratio
                  ),
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    final service = services[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AuthStyles.textDark.withOpacity(0.04),
                            blurRadius: 16,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            // Service click logic here
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Icon with a soft background circle
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: (service['color'] as Color)
                                        .withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    service['icon'] as IconData,
                                    color: service['color'] as Color,
                                    size: 28,
                                  ),
                                ),
                                const Spacer(),
                                // Service Name
                                Text(
                                  service['name'] as String,
                                  style: const TextStyle(
                                    color: AuthStyles.textDark,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.3,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: AuthStyles.primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // 3. Fixed Bottom Right Plus (+) Button
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: AuthStyles
              .buttonGradient, // Applying auth styles premium gradient
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AuthStyles.primaryColor.withOpacity(0.4),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            // Dummy logic for plus action
          },
          backgroundColor:
              Colors.transparent, // transparent kiya taake gradient dikhe
          elevation: 0,
          highlightElevation: 0,
          child: const Icon(Icons.add_rounded, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
