import 'package:flutter/material.dart';
import 'package:my_app/ui/widgets/social_widget.dart';
 // Asegúrate de importar el archivo correcto

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});
  static String id = 'social_page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Otros widgets que puedas tener en tu página
          // ...

          // Utiliza ExerciseDescriptionWidget
            Social()

          // Otros widgets que puedas tener en tu página
          // ...
        ],
      ),
    );
  }
}
