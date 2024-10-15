part of '../page.dart';

class LottieWidget extends StatelessWidget {
  const LottieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: SizedBox(
          width: 333, // Lebar animasi
          height: 333, // Tinggi animasi
          child: Lottie.asset(
            'assets/animation/sign-in.json',
            // delegates: LottieDelegates(
            //   values: [
            //     ValueDelegate.color(
            //       const ['Shape Layer 1', 'Stroke 1'], // Ganti ini dengan path layer yang ingin kamu ubah warnanya
            //       value: Color(0xffFFEB55), // Warna baru untuk bagian tersebut
            //     ),
            //   ],
            // ),
            fit: BoxFit.cover, // Menyesuaikan animasi sesuai container
          ),
        ),
      ),
    );
  }
}
