import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Feeling {
  String id;
  String feelingc;

  Feeling({
    this.id = '',
    this.feelingc = '',
  });

  // Método para convertir una instancia de Feeling a un mapa para la inserción en Supabase
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'feeling': feelingc,
    };
  }

  // Método para guardar la instancia en Supabase
   Future<void> saveToSupabase(Feeling feelingInstance) async {
    final supabase = SupabaseClient(
      dotenv.env['SUPABASE_URL'] ?? '',
      dotenv.env['SUPABASE_ANON_KEY'] ?? '',
    );
    print(supabase);

    await supabase
        .from('first_feeling')
        .insert({'feeling': 'xd'});
  }
}

void main() async {
  // Crear una instancia de Feeling
  final feelingInstance = Feeling(
    feelingc: 'Happy',
  );

  // Guardar la instancia en Supabase
  await feelingInstance.saveToSupabase(feelingInstance);
}
