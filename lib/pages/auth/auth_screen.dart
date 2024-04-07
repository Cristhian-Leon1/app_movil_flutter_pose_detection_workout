import 'package:app_movil_flutter_pose_detection_workout/pages/auth/fragments/login_fragment.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/auth/fragments/widgets/login_email_textfield.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/auth/widgets/login_footer.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/auth/fragments/widgets/login_password_textfield.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/auth/widgets/common_button.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/widgets/common_richtext.dart';
import 'package:app_movil_flutter_pose_detection_workout/utils/custom/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/login_provider.dart';
import '../start/widgets/start_text_title.dart';
import 'fragments/register_fragment.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      FlutterStatusbarcolor.setNavigationBarColor(AppColors.white);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginProvider = Provider.of<LoginProvider>(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FlutterStatusbarcolor.setNavigationBarColor(AppColors.white);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.black87,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: GoogleFonts.inter(
                        fontSize: 35,
                        color: AppColors.white,
                        letterSpacing: 2.000000061035156,
                        ),
                        children: const [
                          TextSpan(
                            text: 'PerfectWorkout ',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                            text: 'AI',
                            style: TextStyle(
                              color: Color(0xFFFE9879),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 11,
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 35,
                            height: 4.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        loginProvider.fragmentState
                        ? SizedBox(height: size.height * 0.01)
                        : SizedBox(height: size.height * 0.03),
                        loginProvider.fragmentState
                        ? const SizedBox(height: 0)
                        : Image.asset(
                          'assets/images/splash_screen/logo.png',
                          height: size.height / 9.1,
                        ),
                        SizedBox(height: size.height * 0.02),
                        const CommonRichText(fontSize: 25),
                        SizedBox(height: size.height * 0.03),
                        loginProvider.fragmentState
                        ? RegisterForm(size: size)
                        : LoginForm(size: size),
                        SizedBox(height: size.height * 0.03),
                        loginProvider.fragmentState
                        ? CustomElevatedButton(size: size, text: 'Iniciar sesión')
                        : CustomElevatedButton(size: size, text: 'Registrarse'),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(child: Divider()),
                            const SizedBox(width: 16),
                            Text(
                              loginProvider.fragmentState
                              ? 'También puede iniciar sesión con:'
                              : 'También puede conectarse con:',
                              style: GoogleFonts.inter(
                                fontSize: 13.0,
                                color: const Color(0xFF969AA8),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(width: 16,),
                            const Expanded(child: Divider()),
                          ],
                        ),
                        Footer(size: size),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}