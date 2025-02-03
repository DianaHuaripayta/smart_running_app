import 'package:flutter/material.dart';
import 'pace_explanation_widget.dart';

class LinkDetailScreen extends StatelessWidget {
    final String link;
  const LinkDetailScreen({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tabla Semanal de Entrenamiento")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTrainingTable(context),
            const PaceExplanationWidget(), // Se incluye el widget con la explicación
          ],
        ),
      ),
    );
  }

  Widget _buildTrainingTable(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Permite deslizar si la tabla es ancha
      child: DataTable(
        columnSpacing: 12,
        headingRowColor: WidgetStateColor.resolveWith((states) => Colors.blue.shade100),
        border: TableBorder.all(color: Colors.grey.shade300),
        columns: const [
          DataColumn(label: Text("Día", style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(label: Text("Actividad", style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(label: Text("Detalles", style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(label: Text("Pace Recomendado", style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        rows: _buildTrainingRows(),
      ),
    );
  }

  List<DataRow> _buildTrainingRows() {
    final List<Map<String, String>> trainingData = [
      {"Día": "Lunes", "Actividad": "Gimnasio (Tren Inferior)", "Detalles": "Sentadillas, prensa, zancadas, extensiones.", "Pace": "No aplica"},
      {"Día": "Martes", "Actividad": "Running (Velocidad)", "Detalles": "Calentamiento 10 min, 5x1 min rápido + 2 min suave, enfriamiento.", "Pace": "5:00-7:00 min/km"},
      {"Día": "Miércoles", "Actividad": "Gimnasio (Tren Superior y Core)", "Detalles": "Press de banca, remo, elevaciones, plancha.", "Pace": "No aplica"},
      {"Día": "Jueves", "Actividad": "Running (Ritmo Moderado)", "Detalles": "5-10 min trote, 20-30 min moderado, enfriamiento.", "Pace": "6:00-7:00 min/km"},
      {"Día": "Viernes", "Actividad": "Gimnasio (Full Body)", "Detalles": "Peso muerto, press militar, curl bíceps, tríceps.", "Pace": "No aplica"},
      {"Día": "Sábado", "Actividad": "Yoga o Descanso Activo", "Detalles": "Yoga, estiramientos o caminata ligera.", "Pace": "No aplica"},
      {"Día": "Domingo", "Actividad": "Running (Carrera Larga)", "Detalles": "5-10 min trote, 30-40 min suave, enfriamiento.", "Pace": "6:30-7:00 min/km"},
    ];

    return trainingData.map((data) {
      return DataRow(
        cells: [
          DataCell(Text(data["Día"]!)),
          DataCell(Text(data["Actividad"]!)),
          DataCell(Text(data["Detalles"]!)),
          DataCell(Text(data["Pace"]!)),
        ],
      );
    }).toList();
  }
}