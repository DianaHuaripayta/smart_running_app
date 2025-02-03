import 'package:flutter/material.dart';

class PaceExplanationWidget extends StatelessWidget {
  const PaceExplanationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explicación de los Paces:",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildPaceSection("Calentamiento y Enfriamiento", [
            "Ritmo suave: 6:30-7:00 min/km. Este ritmo es para activar o relajar el cuerpo sin esfuerzo excesivo.",
          ]),
          _buildPaceSection("Carrera Continua (Jueves)", [
            "Ritmo moderado: 6:00-6:30 min/km. Debes sentir que estás trabajando, pero sin llegar a un esfuerzo máximo.",
            "Deberías poder hablar en frases cortas.",
          ]),
          _buildPaceSection("Intervalos (Martes)", [
            "Intervalos rápidos: 5:00-5:30 min/km. Este ritmo es más intenso y debe sentirse desafiante, pero sostenible durante 1 minuto.",
            "Recuperación: Caminata o trote suave (6:30-7:00 min/km).",
          ]),
          _buildPaceSection("Carrera Larga (Domingo)", [
            "Marathon pace: 6:30-7:00 min/km. Este ritmo debe ser cómodo y sostenible durante largas distancias.",
            "Es más lento que tu ritmo de carrera continua.",
          ]),
          const SizedBox(height: 16),
          Text(
            "Progresión Semanal:",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildPaceSection("Running", [
            "Aumenta la duración de tu carrera larga (domingo) en 5-10 minutos cada semana.",
            "Ejemplo: Si empiezas con 30 minutos, la siguiente semana haz 35-40 minutos.",
          ]),
          _buildPaceSection("Gimnasio", [
            "Aumenta el peso o las repeticiones gradualmente.",
            "Ejemplo: Si haces 3 series de 10 repeticiones con un peso, la siguiente semana intenta 3 series de 12 repeticiones o aumenta ligeramente el peso.",
          ]),
        ],
      ),
    );
  }

  Widget _buildPaceSection(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                child: Text("• $item"),
              )),
        ],
      ),
    );
  }
}