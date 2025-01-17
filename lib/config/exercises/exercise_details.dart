// Supón que tienes una lista de ejercicios
final exerciseDataList = <ExerciseData>[
  ExerciseData(
    id: 1,
    title: 'Exercise 1',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-1.jpeg',
    videoUrl: 'assets/videos/1.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 2,
    title: 'Exercise 2',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-2.jpeg',
    videoUrl: 'assets/videos/2.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 3,
    title: 'Exercise 3',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-3.jpg',
    videoUrl: 'assets/videos/3.mp4',
    setsAndReps: '2 x 12 a 15',
  ),
  ExerciseData(
    id: 4,
    title: 'Exercise 4',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-4.jpg',
   videoUrl: 'assets/videos/4.mp4',
   setsAndReps: '2 x 12 a 15',
  ),
   ExerciseData(
    id: 5,
    title: 'Exercise 5',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-5.jpg',
   videoUrl: 'assets/videos/5.mp4',
   setsAndReps: '2 x 12 a 15',
  ),
    ExerciseData(
    id: 6,
    title: 'Exercise 6',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-6.jpg',
   videoUrl: 'assets/videos/6.mp4',
   setsAndReps: '2 x 12 a 15',
  ),
    ExerciseData(
    id: 7,
    title: 'Exercise 7',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-7.jpg',
   videoUrl: 'assets/videos/7.mp4',
   setsAndReps: '2 x 12 a 15',
  ),
    ExerciseData(
    id: 8,
    title: 'Exercise 8',
    description: 'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    imageUrl: 'assets/images/ex-8.jpg',
   videoUrl: 'assets/videos/8.mp4',
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
