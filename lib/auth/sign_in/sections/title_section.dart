part of '../page.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Hola Snikéa Lovers 👋🏻',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 26,
                  color: Color(0xffFBCB11),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Sign in to continue.',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff2e2e2e),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
