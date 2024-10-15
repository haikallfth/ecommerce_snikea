import 'package:ecommerce_own_project/onboarding_screen/sec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_own_project/svg_items.dart';

class ObFirstPage extends StatelessWidget {
  const ObFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
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
                child: Image.asset('assets/images/ob1.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trending',
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
                        'Showcasing the latest shoe trends and \nstyles.',
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const ObSecPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const curve = Curves.easeInOut;

                            var fadeTween = Tween<double>(begin: 0.0, end: 1.0)
                                .chain(CurveTween(curve: curve));
                            var fadeAnimation = animation.drive(fadeTween);

                            var slideTween = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                                .chain(CurveTween(curve: curve));
                            var slideAnimation = animation.drive(slideTween);

                            return FadeTransition(
                              opacity: fadeAnimation,
                              child: SlideTransition(
                                position: slideAnimation,
                                child: child,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff000000),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: SvgPicture.string(
                          ArrowFloating,
                      ),
                    ),
                  ),
                ),),
          ),
        ],
      ),
    );
  }
}
