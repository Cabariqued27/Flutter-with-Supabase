import 'package:flutter/material.dart';
import 'package:my_app/ui/pages/exercise_description_pages.dart';
import 'package:my_app/ui/widgets/my_button_widget.dart';

class Social extends StatelessWidget {
  const Social({Key? key});

  void start(BuildContext context) {
    Navigator.pushNamed(context, ExerciseDescriptionPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo circular con gradiente
        Container(
          decoration: BoxDecoration(
            gradient: const RadialGradient(
              center: Alignment(0, 0),
              radius: 0.5,
              colors: [
                Color.fromARGB(255, 255, 192, 203), // Rosado
                Color.fromARGB(240, 255, 192, 203),
                Color.fromARGB(220, 255, 192, 203),
                Color.fromARGB(200, 255, 192, 203),
                Color.fromARGB(180, 255, 192, 203),
                Color.fromARGB(160, 255, 192, 203),
                Color.fromARGB(140, 255, 192, 203),
                Color.fromARGB(120, 255, 192, 203),
                Color.fromARGB(100, 255, 192, 203),
                Color.fromARGB(50, 255, 255, 255), // Blanco transparente
              ],
              stops: [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
            ),
            borderRadius: BorderRadius.circular(100.0),
          ),
          height: 200,
          width: 200,
        ),

        // Contenido de la página
        Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              // Row para la imagen y el texto centrado
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Imagen de verificación
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Fondo transparente
                    ),
                    child: Image.asset(
                      'assets/check.png',
                      height: 250, // Ajusta la altura según tus necesidades
                      width: 250, // Ajusta el ancho según tus necesidades
                    ),
                  ),
                  // Espaciado entre la imagen y el texto
                  const SizedBox(height: 30),
                  const Text(
                    'Congratulations',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing, elit congue porta accumsan sociosqu, dictumst montes facilisis netus velit.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Imagen de verificación
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Fondo transparente
                    ),
                    child: Image.asset(
                      'assets/facebook.png',
                      height: 50, // Ajusta la altura según tus necesidades
                      width: 50, // Ajusta el ancho según tus necesidades
                    ),
                  ),
                  // Espaciado entre la imagen y el texto
                  
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Fondo transparente
                    ),
                    child: Image.asset(
                      'assets/ig.png',
                      height: 50, // Ajusta la altura según tus necesidades
                      width: 50, // Ajusta el ancho según tus necesidades
                    ),
                  ),
                 
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Fondo transparente
                    ),
                    child: Image.asset(
                      'assets/x.png',
                      height: 50, // Ajusta la altura según tus necesidades
                      width: 50, // Ajusta el ancho según tus necesidades
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 120),
              MyButton(
                onTap: () => start(context),
                buttonText: 'Back to Home',
              ),
            ],
          ),
        ),
      ],
    );
  }
}


