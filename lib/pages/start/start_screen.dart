import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_button_next.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_button_skip.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_text_title.dart';
import 'package:app_movil_flutter_pose_detection_workout/utils/custom/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          const Image(
            image: AssetImage('assets/images/start/start_2.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Container(
                  color: AppColors.navBarColor.withOpacity(0.2),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StartTextTitle(),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, bottom: 190),
                        child: Text(
                          'Una aplicación para brindar seguimiento a tus ejercicios mediante el uso de IA, todo con el fin de alinear las posturas del cuerpo con las adecuadas según la técnica de cada ejercicio.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: AppColors.navBarColor.withOpacity(0.4),
                    child:  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StartButtonSkip(),
                        StartButtonNext(),
                      ],
                    )
                  )
              )
            ],
          ),
        ],
      )
    );
  }
}
