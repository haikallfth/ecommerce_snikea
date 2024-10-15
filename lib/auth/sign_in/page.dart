import 'package:ecommerce_own_project/auth/forgot/page.dart';
import 'package:ecommerce_own_project/auth/sign_up/page.dart';
import 'package:ecommerce_own_project/home%20/all_shoes/page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

part 'sections/lottie_section.dart';
part 'sections/title_section.dart';
part 'sections/button_sign_in.dart';
part 'sections/footer_sign_in.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isObscure = true;
  bool isChecked = false;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const LottieWidget(),
          const TitleSection(),
          const SizedBox(
            height: 30,
          ),
          // TextField Email
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 39,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16.43,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8E8E90))),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    // Mengaktifkan warna background
                    fillColor: Colors.transparent,
                    // Background ketika tidak dalam fokus
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                          color: Colors
                              .transparent), // Tidak ada border saat tidak fokus
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                          color: Color(0xffFBCB11),
                          width: 2.0), // Border kuning saat fokus
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.email_outlined, size: 21.5),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    hintText: 'example@gmail.com',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xff8E8E90),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                  onTap: () {
                    // Mengubah warna background saat TextField diklik
                    setState(() {
                      isFocused = true;
                    });
                  },
                  onEditingComplete: () {
                    // Mengubah kembali warna background setelah selesai edit
                    setState(() {
                      isFocused = false;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // TextField Password
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 39,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16.43,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8E8E90))),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextField(
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                          color: Color(0xffFBCB11), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                          color: Color(0xffFBCB11), width: 2.0),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.lock_rounded,
                            size: 21.5,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    hintText: '************',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color(0xff8E8E90),
                        )),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 39,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: SizedBox(
                          width: 30,
                          child: Checkbox(
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            activeColor: const Color(0xffFBCB11),
                            // Warna saat dicentang
                            checkColor: Colors.white,
                            // Warna centang
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ), // Bentuk menjadi persegi dengan sudut melengkung
                          ),
                        ),
                      ),
                      Text(
                        'Remembered me',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xffFBCB11),
                                fontSize: 14.43,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: Text(
                        'Forgot password ?',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xffFBCB11),
                                fontSize: 14.43,
                                fontWeight: FontWeight.w600)),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ButtonSignIn(),
          const SizedBox(
            height: 90,
          ),
          const FooterSignIn()
        ],
      ),
    );
  }
}