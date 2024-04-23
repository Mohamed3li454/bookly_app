import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(
        color: const Color(0xff020202),
        fontSize: 20,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfff1f1f1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintText: "Search",
        hintStyle: GoogleFonts.poppins(
            color: const Color(0xffb2b2b2),
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            decorationThickness: 6),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 28,
          ),
        ),
        prefixIconColor: Colors.black,
      ),
    );
  }
}
