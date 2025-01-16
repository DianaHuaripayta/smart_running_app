// Supón que tienes una lista de ejercicios
final exerciseDataList = <ExerciseData>[
  ExerciseData(
    id: 1,
    title: 'Ejercicio 1 - 1',
    description: 'Descripción de 1 - 1',
    imageUrl: 'assets/images/ex-1.jpeg',
    videoUrl: Uri.parse(
        'https://drive.google.com/file/d/1GWLGBZfgSUy0pMjlr3UtGZYWPcpbRX5j/view?usp=drive_link'),
  ),
  ExerciseData(
    id: 2,
    title: 'Ejercicio 2 - 2',
    description: 'Descripción de 2 - 2',
    imageUrl: 'assets/images/ex-1.jpeg',
    videoUrl: Uri.parse(
        'https://drive.google.com/file/d/1GWLGBZfgSUy0pMjlr3UtGZYWPcpbRX5j/view?usp=drive_link'),
  ),
  ExerciseData(
    id: 3,
    title: 'Ejercicio 3 - 3',
    description: 'Descripción de  3 - 3',
    imageUrl: 'assets/images/ex-2.jpg',
    videoUrl: Uri.parse(
        'https://drive.google.com/file/d/1GWLGBZfgSUy0pMjlr3UtGZYWPcpbRX5j/view?usp=drive_link'),
  ),
  ExerciseData(
    id: 4,
    title: 'Ejercicio 4 - 4',
    description: 'Descripción de  4 - 4',
    imageUrl: 'assets/images/ex-3.jpg',
    videoUrl: Uri.parse(
        'https://drive.google.com/file/d/1GWLGBZfgSUy0pMjlr3UtGZYWPcpbRX5j/view?usp=drive_link'),
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
  final Uri videoUrl;

  ExerciseData({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.videoUrl,
  });
  
}
