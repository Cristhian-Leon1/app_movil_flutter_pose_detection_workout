import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_buttom_start.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_button_next.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_button_previous.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_button_skip.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/widgets/start_text_title.dart';
import 'package:app_movil_flutter_pose_detection_workout/providers/onbording_provider.dart';
import 'package:app_movil_flutter_pose_detection_workout/utils/custom/custom_colors.dart';
import 'package:app_movil_flutter_pose_detection_workout/utils/data/data_start_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final onbordingProvider = Provider.of<OnbordingProvider>(context);
    var currentPage = onbordingProvider.currentPage;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(listImages[currentPage]),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StartTextTitle(
                      title1: listTitulos1[currentPage],
                      title2: listTitulos2[currentPage],
                      title3: listTitulos3[currentPage],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 190),
                      child: Text(
                        listDescripciones[currentPage],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: AppColors.navBarColor.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        currentPage == 0 ? const StartButtonSkip() : const StartButtonPrevious(),
                        currentPage != 3 ? const StartButtonNext() : const StartButtonStart(),
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
