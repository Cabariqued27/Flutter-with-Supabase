import 'package:flutter/material.dart';
import 'package:my_app/ui/widgets/exercise_description_widget.dart';
 // Asegúrate de importar el archivo correcto

class ExerciseDescriptionPage extends StatelessWidget {
  const ExerciseDescriptionPage({super.key});
  static String id = 'exercise_description_page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Otros widgets que puedas tener en tu página
          // ...

          // Utiliza ExerciseDescriptionWidget
          ExerciseDescriptionWidget(
            texto: 'Calm',
            numeroPasos: 5,
          ),

          // Otros widgets que puedas tener en tu página
          // ...
        ],
      ),
    );
  }
}
