import 'package:flutter/material.dart';
import 'package:smart_running_app/config/exercises/exercise_details.dart';
import 'package:smart_running_app/presentation/widgets/video_player_widget.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final int id;
  static const String name = 'general_screen';
  const ExerciseDetailScreen({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final exercise = exerciseDataList.firstWhere(
      (exercise) => exercise.id == id,
      orElse: () => throw Exception('Ejercicio no encontrado'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${exercise.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoPlayerWidget(videoUrl: exercise.videoUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${exercise.title} - ${exercise.setsAndReps}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(exercise.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
