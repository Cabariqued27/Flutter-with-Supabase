import 'package:flutter/material.dart';

import 'package:my_app/ui/widgets/feedback_widget_widget.dart';
 // Asegúrate de importar el archivo correcto

class SecondFeedBackPage extends StatelessWidget {
  const SecondFeedBackPage({super.key});
  static String id = 'second_feedback_page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Otros widgets que puedas tener en tu página
          // ...

          // Utiliza ExerciseDescriptionWidget
          FeelingWidget()

          // Otros widgets que puedas tener en tu página
          // ...
        ],
      ),
    );
  }
}
