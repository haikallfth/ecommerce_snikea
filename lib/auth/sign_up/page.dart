import 'package:ecommerce_own_project/auth/sign_in/page.dart';
import 'package:ecommerce_own_project/auth/sign_up/widgets/item_sign_up.dart';
import 'package:ecommerce_own_project/home%20/all_shoes/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

part 'sections/header_section.dart';
part 'sections/button_sign_up.dart';
part 'sections/footer_sign_up.dart';

class SignUpPage extends StatefulWidget {

  final bool? isChecked;

  const SignUpPage({super.key, this.isChecked});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const HeaderSection(),
          const SizedBox(
            height: 30,
          ),
          const SignUpCard(title: 'Full Name', prefixIcon: FeatherIcons.user , hinTextSection: 'Haikal Al Fatih', ),
          const SizedBox(height: 13,),
          const SignUpCard(title: 'Email', prefixIcon: FeatherIcons.mail , hinTextSection: 'ekalderr@gamil.com', ),
          const SizedBox(height: 13,),
          const SignUpCard(title: 'Mobile Number', prefixIcon: FeatherIcons.phoneCall , hinTextSection: '082125046969', ),
          const SizedBox(height: 13,),
          const SignUpCard(title: 'Password', prefixIcon: FeatherIcons.lock , hinTextSection: 'password', suffixIcon: FeatherIcons.eyeOff, isObscure: true, ),
          const SizedBox(height: 13,),
          const SignUpCard(title: 'Confirm Password', prefixIcon: FeatherIcons.lock , hinTextSection: 'Confirm password', suffixIcon: FeatherIcons.eyeOff, isObscure: true,),
          const SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 39,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        'I accept the terms & coditions',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xffFBCB11),
                                fontSize: 14.43,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 13,),
          const ButtonSignUp(),
          const SizedBox(height: 71,),
          const FooterSignUp()
        ],
      ),
    );
  }
}

