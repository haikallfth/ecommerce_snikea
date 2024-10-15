import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Forgot Password ?',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 28,
                              color: Color(0xff2e2e2e),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter the email address associated',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xffBDBDBD),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'with your account.',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 17,
                              color: Color(0xffBDBDBD),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
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
                                color: Color(0xff686D76))),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
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
                                    Icons.email_outlined,
                                    size: 21.5,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                            hintText: 'example@gmail.com',
                            hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ), // poppins
                            contentPadding: const EdgeInsets.symmetric(vertical: 13)
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFBCB11),
                        foregroundColor: const Color(0xffffffff),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text('Recover Password', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold
                          )
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
