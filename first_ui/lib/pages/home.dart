import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class  HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          TextField()
        ],
      )
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Makan Siang Gratis'
        ,style: GoogleFonts.lato(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        child:  Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x0fff78f8),
              borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset(
            'assets/icons/back-svgrepo-com.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),

      actions: [
        GestureDetector(
          onTap: (){
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0x0fff78f8),
              borderRadius: BorderRadius.circular(10)
            ),
            width: 37,
            child: SvgPicture.asset(
              'assets/icons/option-svgrepo-com.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ]
    );
  }
}
