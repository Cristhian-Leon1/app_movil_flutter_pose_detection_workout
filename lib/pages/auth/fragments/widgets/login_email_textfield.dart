import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../providers/login_provider.dart';

class EmailTextField extends StatelessWidget {
  final Size size;

  const EmailTextField({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final emailController = Provider.of<LoginProvider>(context).emailController;

    return SizedBox(
      height: size.height / 13,
      child: TextField(
        controller: emailController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: 'Escriba su correo electrónico',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          filled: true,
          fillColor: emailController.text.isEmpty
          ? const Color.fromRGBO(248, 247, 251, 1)
          : Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: emailController.text.isEmpty
                ? Colors.transparent
                : const Color.fromRGBO(44, 185, 176, 1),
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromRGBO(44, 185, 176, 1),
            )
          ),
          prefixIcon: Icon(
            Icons.mail_outline_rounded,
            color: emailController.text.isEmpty
            ? const Color(0xFF151624).withOpacity(0.5)
            : const Color.fromRGBO(44, 185, 176, 1),
              size: 16,
          ),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: emailController.text.isEmpty
            ? const Center()
            : const Icon(Icons.check, color: Colors.white, size: 13),
          ),
        ),
      ),
    );
  }
}
