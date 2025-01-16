// Supón que tienes una lista de ejercicios
final exerciseDataList = <ExerciseData>[
  ExerciseData(
    id: 1,
    title: 'Ejercicio 1 - 1',
    description: 'Ninguno',
    imageUrl: 'assets/images/ex-1.jpeg',
    videoUrl: 'assets/videos/1.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 2,
    title: 'Ejercicio 2 - 2',
    description: 'Ninguno',
    imageUrl: 'assets/images/ex-1.jpeg',
    videoUrl: 'assets/videos/2.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 3,
    title: 'Ejercicio 3 - 3',
    description: 'Ninguno',
    imageUrl: 'assets/images/ex-2.jpg',
    videoUrl: 'assets/videos/3.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 4,
    title: 'Ejercicio 4 - 4',
    description: 'Ninguno',
    imageUrl: 'assets/images/ex-3.jpg',
   videoUrl: 'assets/videos/4.mp4',
   setsAndReps: '2 x 12 a 15',
  ),
  // Agrega más ejercicios aquí...
];

ExerciseData fetchExerciseDataById(int id) {
  return exerciseDataList.firstWhere((exercise) => exercise.id == id);
}

// Modelo de datos
class ExerciseData {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
    final String setsAndReps;
  final String videoUrl;

  ExerciseData({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.videoUrl,
    required this.setsAndReps,
  });
  
}
