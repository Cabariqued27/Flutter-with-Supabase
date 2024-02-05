import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: FeelingWidget(),
      ),
    );
  }
}

class FeelingWidget extends StatefulWidget {
  const FeelingWidget({Key? key}) : super(key: key);

  @override
  _FeelingWidgetState createState() => _FeelingWidgetState();
}

class _FeelingWidgetState extends State<FeelingWidget> {
  String selectedFeeling = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Contenedor circular de fondo
        Positioned(
          left: -70,
          top: -20,
          child: Container(
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
                stops: [
                  0.1,
                  0.2,
                  0.3,
                  0.4,
                  0.5,
                  0.6,
                  0.7,
                  0.8,
                  0.9,
                  1.0
                ], // Ajusta estos valores según tus preferencias
              ),
              borderRadius: BorderRadius.circular(100.0),
            ),
            height: 200,
            width: 200,
          ),
        ),

        // Contenedor circular en la parte inferior
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: const RadialGradient(
                center: Alignment(0, 0),
                radius: 0.5,
                colors: [
                  Color.fromARGB(255, 135, 206, 250), // Azul
                  Color.fromARGB(240, 135, 206, 250),
                  Color.fromARGB(220, 135, 206, 250),
                  Color.fromARGB(200, 135, 206, 250),
                  Color.fromARGB(180, 135, 206, 250),
                  Color.fromARGB(160, 135, 206, 250),
                  Color.fromARGB(140, 135, 206, 250),
                  Color.fromARGB(120, 135, 206, 250),
                  Color.fromARGB(100, 135, 206, 250),
                  Color.fromARGB(50, 255, 255, 255), // Blanco transparente
                ],
                stops: [
                  0.1,
                  0.2,
                  0.3,
                  0.4,
                  0.5,
                  0.6,
                  0.7,
                  0.8,
                  0.9,
                  1.0
                ], // Ajusta estos valores según tus preferencias
              ),
              borderRadius: BorderRadius.circular(100.0),
            ),
            height: 200,
            width: 200,
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Resto de los elementos
            const SizedBox(height: 150),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Column(
                    children: [
                      Text(
                        'How do you feel now?',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildCustomButton('Awful', 'assets/awful.png',
                        const Color.fromARGB(255, 137, 74, 204)),
                    buildCustomButton('Bad', 'assets/awful.png',
                        const Color.fromARGB(255, 47, 134, 206)),
                    buildCustomButton('Okay', 'assets/awful.png',
                        const Color.fromARGB(165, 255, 153, 0)),
                    buildCustomButton('Good', 'assets/awful.png',
                        const Color.fromARGB(255, 54, 244, 108)),
                    buildCustomButton('Great', 'assets/awful.png',
                        const Color.fromARGB(255, 56, 166, 226)),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Respuesta seleccionada: $selectedFeeling',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCustomButton(
      String feeling, String imagePath, Color backgroundColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              updateFeeling(feeling);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Image.asset(imagePath, width: 30, height: 70),
          ),
          const SizedBox(height: 8),
          Text(
            feeling,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  void updateFeeling(String feeling) {
    setState(() {
      selectedFeeling = feeling;
    });
  }
}
