import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Attendance Tracker",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
            color: Color(0xFF0061A4),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 358,
              height: 228,
              decoration: BoxDecoration(
                color: Color(0xFFF1F4F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Welcome to Attendance Tracker",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    color: Color(0xFF0061A4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
