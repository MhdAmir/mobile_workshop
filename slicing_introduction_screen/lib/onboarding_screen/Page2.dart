import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  final String logoName = 'assets/logo.jpg';
  final String ilustrateName = 'assets/Illustration_1.jpg';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 125),
          Image(
            image: AssetImage(logoName),
          ),
          const SizedBox(height: 100),
          Image(
            image: AssetImage(ilustrateName),
          ),
          const SizedBox(height: 50),
          Text(
            'Teman Ngobrol Sejati',
            style: GoogleFonts.plusJakartaSans(
              textStyle: Theme
                  .of(context)
                  .textTheme
                  .displayLarge,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
            child: Text(
              textAlign: TextAlign.center,
              'Jadilah dirimu sendiri dengan dukungan penuh dari sahabat setia.',
              style: GoogleFonts.plusJakartaSans(
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .displayLarge,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,),
            ),
          ),
        ],
      ),
    );
  }
}
