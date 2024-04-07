import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../providers/login_provider.dart';

class CommonTextField extends StatelessWidget {
  final String tag;
  final Size size;

  const CommonTextField({super.key, required this.size, required this.tag});

  @override
  Widget build(BuildContext context) {

    final textController = tag == 'name' ? Provider.of<LoginProvider>(context).nameController :
                           tag == 'email' ? Provider.of<LoginProvider>(context).emailController :
                           tag == 'pass1' ? Provider.of<LoginProvider>(context).passwordController :
                           Provider.of<LoginProvider>(context).password2Controller;

    return SizedBox(
      height: size.height / 13,
      child: TextField(
        controller: textController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: tag == 'name' ? TextInputType.name:
                      tag == 'email' ? TextInputType.emailAddress :
                      TextInputType.visiblePassword,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: tag == 'name' ? 'Escriba su nombre' :
                    tag == 'email' ? 'Escriba su correo electrónico' :
                    tag == 'pass1' ? 'Escriba su contraseña' :
                    'Confirme su contraseña',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          filled: true,
          fillColor: textController.text.isEmpty
              ? const Color.fromRGBO(248, 247, 251, 1)
              : Colors.transparent,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: textController.text.isEmpty
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
            tag == 'name' ? Icons.person_outline_rounded :
            tag == 'email' ? Icons.mail_outline_rounded :
            Icons.lock_outline_rounded,
            color: textController.text.isEmpty
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
            child: textController.text.isEmpty
                ? const Center()
                : const Icon(Icons.check, color: Colors.white, size: 13),
          ),
        ),
      ),
    );
  }
}

