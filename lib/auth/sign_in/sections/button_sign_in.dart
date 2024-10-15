part of '../page.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 39),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
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
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFBCB11),
            foregroundColor: const Color(0xffffffff),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: Text(
            'Sign In',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
