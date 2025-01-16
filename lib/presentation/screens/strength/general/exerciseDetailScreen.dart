import 'package:flutter/material.dart';
import 'package:smart_running_app/config/exercises/exercise_details.dart';
import 'package:smart_running_app/presentation/widgets/video_player_widget.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final int id;

  const ExerciseDetailScreen({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Buscar el ejercicio según el id
    final exercise = exerciseDataList.firstWhere(
      (exercise) => exercise.id == id,
      orElse: () {
        throw Exception('Ejercicio con id $id no encontrado');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del ejercicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mostrar video si existe videoUrl, de lo contrario mostrar imagen
            exercise.videoUrl != null
                ? VideoPlayerWidget(videoUrl: exercise.videoUrl!)
                : Image.asset(exercise.imageUrl),
            const SizedBox(height: 16),
            // Título
            Text(
              exercise.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            // Descripción
            Text(
              exercise.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}