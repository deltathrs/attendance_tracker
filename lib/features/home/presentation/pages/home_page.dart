import 'package:attendance_tracker/features/home/presentation/widgets/feature_card_widget.dart';
import 'package:attendance_tracker/features/home/presentation/widgets/recent_log_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F6),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: const Color(0xFF1565C0),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1565C0).withOpacity(0.35),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: const Color(0xFF1565C0)),
        ),
        title: Text(
          'Attendance Tracker',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: const Color(0xFF0061A4),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Header ───────────────────────────────────────────
                Text(
                  'Welcome',
                  style: GoogleFonts.roboto(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1A1A2E),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Ready for your shift? Let's get started.",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(height: 20),

                // ── Attendance Card ───────────────────────────────────
                FeatureCardWidget(
                  leadingIcon: Icons.assignment_ind_outlined,
                  iconBgColor: const Color(0xFF1565C0),
                  iconColor: Colors.white,
                  bgIcon: Icons.account_circle_outlined,
                  title: 'Attendance',
                  subtitle: 'Check in at your current location',
                  actionLabel: 'Active Shift',
                  onActionTap: () {},
                ),
                const SizedBox(height: 14),

                // ── Master Location Card ──────────────────────────────
                FeatureCardWidget(
                  leadingIcon: Icons.map_outlined,
                  iconBgColor: const Color(0xFFEEF2FF),
                  iconColor: const Color(0xFF4B6BFB),
                  bgIcon: Icons.map_outlined,
                  title: 'Master Location',
                  subtitle: 'Manage company work locations',
                  actionLabel: '12 Active Sites',
                  onActionTap: () {},
                ),
                const SizedBox(height: 28),

                // ── Recent Logs Header ────────────────────────────────
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Logs',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1A1A2E),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1565C0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // ── Log Items ─────────────────────────────────────────
                RecentLogItemWidget(
                  locationName: 'Main Office - H1',
                  checkoutTime: 'Check-out at 05:45 PM',
                  dateLabel: 'Yesterday',
                ),
                const SizedBox(height: 10),
                RecentLogItemWidget(
                  locationName: 'North Campus',
                  checkoutTime: 'Check-out at 06:12 PM',
                  dateLabel: 'Oct 24',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
