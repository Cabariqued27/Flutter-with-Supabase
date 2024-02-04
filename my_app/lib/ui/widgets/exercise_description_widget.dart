import 'package:flutter/material.dart';

class ExerciseDescriptionWidget extends StatelessWidget {
  final String texto;
  final int numeroPasos;

  const ExerciseDescriptionWidget({
    super.key,
    required this.texto,
    required this.numeroPasos,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50), // Mover la tarjeta más abajo
          SizedBox(
            height: 200,
            child: Card(
              margin: EdgeInsets.zero,
              color: const Color.fromARGB(255, 124, 163, 194),
              // Añadir esta línea para establecer el color azul
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    texto,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: numeroPasos,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple,
                            boxShadow: [],
                          ),
                        ),
                      ),
                      title: Text('Paso ${index + 1}'),
                    ),
                    if (index <
                        numeroPasos -
                            1) // Agregar Divider solo para elementos excepto el último
                      const Divider(
                        color: Color.fromARGB(255, 215, 205, 205),
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                      ),
                  ],
                );
              },
            ),
          )
          
        ],
      ),
    );
  }
}
