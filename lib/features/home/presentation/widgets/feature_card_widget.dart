import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCardWidget extends StatelessWidget {
  final IconData leadingIcon;
  final Color iconBgColor;
  final Color iconColor;
  final IconData bgIcon;
  final String title;
  final String subtitle;
  final String actionLabel;
  final VoidCallback? onActionTap;

  const FeatureCardWidget({
    Key? key,
    required this.leadingIcon,
    required this.iconBgColor,
    required this.iconColor,
    required this.bgIcon,
    required this.title,
    required this.subtitle,
    required this.actionLabel,
    this.onActionTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background watermark icon
          Positioned(
            right: 0,
            top: 0,
            child: Icon(
              bgIcon,
              size: 72,
              color: Colors.grey.withOpacity(0.15),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Leading icon circle
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  leadingIcon,
                  color: iconColor,
                  size: 24,
                ),
              ),
              const SizedBox(height: 16),
              // Title
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1A1A2E),
                ),
              ),
              const SizedBox(height: 4),
              // Subtitle
              Text(
                subtitle,
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 12),
              // Action link
              GestureDetector(
                onTap: onActionTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      actionLabel,
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1565C0),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: Color(0xFF1565C0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
