import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../providers/login_provider.dart';

class PassTextField extends StatelessWidget {
  final Size size;

  const PassTextField({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final passController = loginProvider.passwordController;

    return Container(
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(248, 247, 251, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Icon(
              Icons.lock_outline_rounded,
              size: 16,
              color: const Color(0xFF151624).withOpacity(0.5),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextField(
                controller: passController,
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  color: const Color(0xFF151624),
                ),
                cursorColor: const Color(0xFF151624),
                obscureText: loginProvider.viewPassword ? false : true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Escriba su contraseña',
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16.0,
                    color: const Color(0xFF151624).withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            passController.text.isEmpty
            ? const Center()
            : GestureDetector(
              onTap: () {
                loginProvider.togglePasswordVisibility();
              },
              child: Container(
                height: 30,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: loginProvider.viewPassword
                    ? const Color.fromRGBO(20, 185, 176, 0.12)
                    : const Color.fromRGBO(248, 247, 251, 1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: loginProvider.viewPassword
                    ? const Color.fromRGBO(44, 185, 176, 1)
                    : const Color(0xFFFE9879),
                  )
                ),
                child: Text(
                  'Ver',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12.0,
                    color: loginProvider.viewPassword
                      ? const Color.fromRGBO(44, 185, 176, 1)
                      : const Color(0xFFFE9879),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
