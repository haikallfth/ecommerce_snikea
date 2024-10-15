import 'package:ecommerce_own_project/onboarding_screen/first_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ObFirstPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   width: 333, // Lebar animasi
            //   height: 333, // Tinggi animasi
            //   child: Lottie.asset(
            //     'assets/animation/focus.json',
            //     fit: BoxFit.cover, // Menyesuaikan animasi sesuai container
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 55),
            //   child: Expanded(
            //     child: AnimatedTextKit(
            //       animatedTexts: [
            //         FadeAnimatedText(
            //           'Hello',
            //           textStyle:
            //               GoogleFonts.montserrat(
            //                 textStyle: const TextStyle(
            //                   fontSize: 52.0,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xffFBCB11),
            //                 ),
            //               ),
            //           duration: const Duration(milliseconds: 1000),
            //         ),
            //         FadeAnimatedText(
            //           'Snikers',
            //           textStyle:
            //               GoogleFonts.montserrat(
            //                 textStyle: const TextStyle(
            //                   fontSize: 52.0,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xffFBCB11),
            //                 ),
            //               ),
            //           duration: const Duration(milliseconds: 1000),
            //         ),
            //         FadeAnimatedText(
            //           'Lover',
            //           textStyle:
            //               GoogleFonts.montserrat(
            //                 textStyle: const TextStyle(
            //                   fontSize: 52.0,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xffFBCB11),
            //                 ),
            //               ),
            //           duration: const Duration(milliseconds: 2000),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),,
            const SizedBox(height: 250,),
            SizedBox(
              child:  SizedBox(
                width: 333, // Lebar animasi
                height: 333, // Tinggi animasi
                child: Lottie.asset(
                  'assets/animation/focus.json',
                  fit: BoxFit.cover, // Menyesuaikan animasi sesuai container
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'Hello',
                      textStyle:
                      GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 52.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFBCB11),
                        ),
                      ),
                      duration: const Duration(milliseconds: 1000),
                    ),
                    FadeAnimatedText(
                      'Snikers',
                      textStyle:
                      GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 52.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFBCB11),
                        ),
                      ),
                      duration: const Duration(milliseconds: 1000),
                    ),
                    FadeAnimatedText(
                      'Lover',
                      textStyle:
                      GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 52.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFBCB11),
                        ),
                      ),
                      duration: const Duration(milliseconds: 2000),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
