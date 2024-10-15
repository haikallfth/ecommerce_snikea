part of '../page.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Create Account',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFBCB11)),
            ),
          ),
        ),
        Center(
          child: Text(
            'It\'s free and easy to set up!',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff8E8E90),
                )), // poppins
          ),
        )
      ],
    );
  }
}
