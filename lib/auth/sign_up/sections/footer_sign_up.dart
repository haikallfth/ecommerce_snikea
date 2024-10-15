part of '../page.dart';

class FooterSignUp extends StatelessWidget {
  const FooterSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInPage(),
                  ),
                );
              },
              child: Text(
                'Sign In',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffFBCB11))),
              ),
            )
          ],
        ));
  }
}
