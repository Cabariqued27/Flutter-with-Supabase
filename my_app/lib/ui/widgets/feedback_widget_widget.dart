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
          left: -50, // Ajusta la posición izquierda según tu preferencia
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(37, 77, 200, 228),
              borderRadius: BorderRadius.circular(100.0),
            ),
            height: 200,
            width: 200,
          ),
        ),
        // Contenedor circular en la parte inferior
        Positioned(
          bottom: 0, // Ajusta la posición inferior según tu preferencia
          left: MediaQuery.of(context).size.width / 2 - 100, // Centra horizontalmente
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(37, 77, 200, 228),
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
            SizedBox(height: 70),
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
      margin: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 2.0),
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
