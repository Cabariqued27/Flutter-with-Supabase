import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/ui/pages/reaction_page.dart';

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
        Positioned(
          right: -70,
          bottom: -20,
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

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Resto de los elementos
            const SizedBox(height: 70),
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
                    buildCustomButton('Awful', 'assets/icons/emotions/good.png',
                        Color.fromARGB(230, 170, 147, 246)),
                    buildCustomButton('Bad', 'assets/icons/emotions/good.png',
                        Color.fromARGB(207, 81, 247, 139)),
                    buildCustomButton('Okay', 'assets/icons/emotions/angel.png',
                        Color.fromARGB(255, 245, 255, 133)),
                    buildCustomButton('Good', 'assets/icons/emotions/good.png',
                        Color.fromARGB(255, 157, 255, 171)),
                    buildCustomButton('Great', 'assets/icons/emotions/great.png',
                        Color.fromARGB(255, 157, 221, 255)),
                  ],
                ),
                const SizedBox(height: 131),
                Text(
                  'Respuesta seleccionada: $selectedFeeling',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            // Contenedor circular en la parte inferior
            Container(
              margin: const EdgeInsets.only(
                top: 300,
                right: 200,
              ),
              decoration: BoxDecoration(
                gradient: const RadialGradient(
                  center: Alignment(0, 0),
                  radius: 0.5,
                  colors: [
                    Color.fromARGB(255, 173, 216, 230), // Azul claro
                    Color.fromARGB(240, 173, 216, 230),
                    Color.fromARGB(220, 173, 216, 230),
                    Color.fromARGB(200, 173, 216, 230),
                    Color.fromARGB(180, 173, 216, 230),
                    Color.fromARGB(160, 173, 216, 230),
                    Color.fromARGB(140, 173, 216, 230),
                    Color.fromARGB(120, 173, 216, 230),
                    Color.fromARGB(100, 173, 216, 230),
                    Color.fromARGB(50, 255, 255, 255), // Blanco transparente
                  ],
                  stops: [
                    0.05,
                    0.15,
                    0.25,
                    0.35,
                    0.45,
                    0.55,
                    0.65,
                    0.75,
                    0.85,
                    1.0,
                  ],
                ),
                borderRadius:
                    BorderRadius.circular(50.0), // Reducción del radio de borde
              ),
              height: 200,
              width: 200,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCustomButton(
  String feeling, String imagePath, Color backgroundColor) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
    width: 75, // Ajusta el ancho del contenedor
    height: 100, // Ajusta la altura del contenedor
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            updateFeeling(feeling);
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, // Eliminar el espacio interno del botón
            minimumSize: Size(42, 42), // Tamaño mínimo del botón
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: SizedBox(
            width: 70,
            height: 70,
            child: Image.asset(imagePath),
          ),
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



  void updateFeeling(String feeling) async {
    setState(() {
      selectedFeeling = feeling;
      print('Selected feeling updated: $selectedFeeling');
      Navigator.pushNamed(context, SocialPage.id);
    });

    await supabase.from('first_feeling').insert({'feeling': selectedFeeling});
  }
}
