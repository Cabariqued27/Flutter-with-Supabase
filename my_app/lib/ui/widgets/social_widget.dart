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
    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          const Text(
            'Congratulations',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Default text',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaButton(
                icon: Icons.camera_alt,
                color: Colors.purple,
                label: 'Instagram',
              ),
              SocialMediaButton(
                icon: Icons.face,
                color: Colors.blue,
                label: 'Facebook',
              ),
              SocialMediaButton(
                icon: Icons.alternate_email,
                color: Colors.red,
                label: 'Google',
              ),
            ],
          ),
          const SizedBox(height: 20),
              MyButton(
                onTap: () => start(context),
                buttonText: 'Back to Home',
              ),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const SocialMediaButton(
      {Key? key, required this.icon, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your action here when the button is pressed
        print('Button pressed: $label');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
