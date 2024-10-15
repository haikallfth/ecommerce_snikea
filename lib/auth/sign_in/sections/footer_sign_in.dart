part of '../page.dart';

class FooterSignIn extends StatelessWidget {
  const FooterSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: Text(
                'Sign Up',
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
