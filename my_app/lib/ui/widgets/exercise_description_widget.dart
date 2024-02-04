import 'package:flutter/material.dart';
import 'package:my_app/ui/widgets/my_button_widget.dart';

class ExerciseDescriptionWidget extends StatelessWidget {
  final String texto;
  final int numeroPasos;

  const ExerciseDescriptionWidget({
    Key? key,
    required this.texto,
    required this.numeroPasos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          SizedBox(
            height: 200,
            child: Card(
              margin: EdgeInsets.zero,
              color: const Color.fromARGB(255, 124, 163, 194),
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
            child: Column(
              children: List.generate(numeroPasos, (index) {
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
                            color:  Color.fromARGB(209, 70, 19, 96),
                            boxShadow: [],
                          ),
                        ),
                      ),
                      title: Text('Paso ${index + 1}',style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                    ),
                    if (index < numeroPasos - 1)
                      const Divider(
                        color: Color.fromARGB(255, 215, 205, 205),
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                      ),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(height: 100),
          const MyButton(
                  onTap: null, buttonText: 'Start Exercise',
                ),
        ],
      ),
    );
  }
}
