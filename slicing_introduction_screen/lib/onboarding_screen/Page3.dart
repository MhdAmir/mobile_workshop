import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  final String logoName = 'assets/logo.jpg';
  final String ilustrateName = 'assets/Illustration_2.jpg';
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          Column(
            children: [
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

        ],
      ),
    );
  }
}
