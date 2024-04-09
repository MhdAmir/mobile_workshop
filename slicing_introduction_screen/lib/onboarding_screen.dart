import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_introduction_screen/onboarding_screen/Page3.dart';
import 'package:slicing_introduction_screen/onboarding_screen/page1.dart';
import 'package:slicing_introduction_screen/page_indicator.dart';

import 'onboarding_screen/Page2.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});

  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  PageController _controller = PageController();
  int _currentPage = 0;
  bool _onLastPage = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(_handlePageController);
  }

  void _handlePageController() {
    setState(() {
      _currentPage = _controller.page!.ceil();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _onLastPage = (index == 2);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.6),
            child:
              PageIndicator(currentValue: _currentPage,),
          ),

          Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                _onLastPage?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black45),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(165, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(color: Colors.black),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ) :
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black45),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(165, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Text(
                      "Lewati",
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                _onLastPage?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () { },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF02BBDD),
                      minimumSize: const Size(165, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(color: Colors.white),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ) :
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF02BBDD),
                      minimumSize: const Size(165, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Text(
                      "Lanjut",
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(color: Colors.white),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
