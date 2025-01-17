import 'package:flutter/material.dart';

class ExerciseItems {
  final int id;
  final String index;
  final String title;
  final String description;
  final String video;
  final String imageUrl;
  final IconData icon;

  const ExerciseItems({
    required this.id,
    required this.index,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.video,
    required this.icon,
  });
}

const appExerciseItems = <ExerciseItems>[
  ExerciseItems(
    id: 1,
    index: '1',
    title: 'Sin Nombre',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/progress',
    imageUrl: 'assets/images/ex-1.jpeg',
    icon: Icons.self_improvement,
  ),
  ExerciseItems(
    id: 2,
    index: '2',
    title: 'Sin Nombre',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/counter_riverpod',
    imageUrl: 'assets/images/ex-1.jpeg',
    icon: Icons.transfer_within_a_station_outlined,
  ),
  ExerciseItems(
    id: 3,
    index: '3',
    title: 'Sin Nombre',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/buttons',
    imageUrl: 'assets/images/ex-2.jpg',
    icon: Icons.trending_up_outlined,
  ),
  ExerciseItems(
    id: 4,
    index: '4',
    title: 'Sin Nombre',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-3.jpg',
    icon: Icons.whatshot,
  ),
  
];
