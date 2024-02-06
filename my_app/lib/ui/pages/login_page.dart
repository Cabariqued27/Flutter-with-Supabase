import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signInWithEmail() async {
  final AuthResponse res = await supabase.auth.signInWithPassword(
      email: _emailController.text, password: _passwordController.text);

  if (res.session != null) {
    // Manejar el error, por ejemplo, mostrar un mensaje de error al usuario.
    print('Error al iniciar sesión: ');
  } else {
    // El usuario ha iniciado sesión correctamente.
    print('Inicio de sesión exitoso');
    // Puedes realizar acciones adicionales aquí después del inicio de sesión exitoso.
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: signInWithEmail,
              child: const Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
