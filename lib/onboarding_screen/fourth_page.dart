import 'package:ecommerce_own_project/onboarding_screen/sec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_own_project/svg_items.dart';

import '../auth/sign_in/page.dart';

class ObFourthPage extends StatelessWidget {
  const ObFourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd4d4d4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                  'assets/images/ob4.png',
                )),
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customized',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // font poppins
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'The ability to personalise the app to fit \nthe your preferences.',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ), // font poppins
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, right: 24),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: const Color(0xff000000).withOpacity(5 / 100),
                      borderRadius: BorderRadius.circular(100)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const SignInPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(0.0, 1.0); // Mulai dari bawah layar
                            const end = Offset.zero;
                            const curve = Curves.decelerate;

                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff000000),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color(0xff000000).withOpacity(0.4), // Warna border
                          width: 5.0, // Ketebalan border
                        ),
                      ),
                      child: Center(
                        child: Text('Snikéa', style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffefefe)
                          ),
                        ),),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
