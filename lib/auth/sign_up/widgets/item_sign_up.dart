import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';


class SignUpCard extends StatefulWidget {

  final String title;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hinTextSection;
  final bool? isObscure;



  const SignUpCard({
    super.key,
    required this.title,
    required this.prefixIcon,
    this.suffixIcon,
    required this.hinTextSection,
    this.isObscure
  });

  @override
  State<SignUpCard> createState() => _SignUpCardState();
}

class _SignUpCardState extends State<SignUpCard> {

  bool isObscure = true;
  bool isChecked = false;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 16.43,
                fontWeight: FontWeight.normal,
                color: Color(0xff8E8E90),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextField(
            obscureText: widget.isObscure ?? false,
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        widget.prefixIcon,
                        size: 21.5,
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                hintText: widget.hinTextSection,
                hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xff8E8E90),
                  ),
                ),
                suffixIcon: IconButton(

                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(isObscure ? widget.suffixIcon : FeatherIcons.eye),
                ),// poppins
                contentPadding: const EdgeInsets.symmetric(vertical: 13)),
          ),
        ],
      ),
    );
  }
}
