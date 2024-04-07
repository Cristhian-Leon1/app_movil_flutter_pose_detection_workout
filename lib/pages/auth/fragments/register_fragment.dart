import 'package:app_movil_flutter_pose_detection_workout/pages/auth/fragments/widgets/register_common_textfield.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  final Size size;
  const RegisterForm({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTextField(size: size, tag: 'name'),
        SizedBox(height: size.height * 0.02),
        CommonTextField(size: size, tag: 'email'),
        SizedBox(height: size.height * 0.02),
        CommonTextField(size: size, tag: 'pass1'),
        SizedBox(height: size.height * 0.02),
        CommonTextField(size: size, tag: 'pass2'),
      ],
    );
  }
}
