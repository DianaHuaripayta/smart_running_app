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
    title: 'Exercise 1 GENERAL',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/progress',
    imageUrl: 'assets/images/ex-1.png',
    icon: Icons.self_improvement,
  ),
  ExerciseItems(
    id: 2,
    index: '2',
    title: 'Exercise 2',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/counter_riverpod',
    imageUrl: 'assets/images/ex-2.png',
    icon: Icons.transfer_within_a_station_outlined,
  ),
  ExerciseItems(
    id: 3,
    index: '3',
    title: 'Exercise 3',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/buttons',
    imageUrl: 'assets/images/ex-3.png',
    icon: Icons.trending_up_outlined,
  ),
  ExerciseItems(
    id: 4,
    index: '4',
    title: 'Exercise 4',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-4.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 5,
    index: '5',
    title: 'Exercise 5',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-5.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 6,
    index: '6',
    title: 'Exercise 6',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-6.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 7,
    index: '7',
    title: 'Exercise 7',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-7.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 8,
    index: '8',
    title: 'Exercise 8',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-8.png',
    icon: Icons.whatshot,
  ),
  
];

const appWarmUpForTreadmillItems = <ExerciseItems>[
  ExerciseItems(
    id: 9,
    index: '1',
    title: 'CALF RISES',
    description:'Punta y talón. Para la activación de los gemelos o soleos.',
    video: '/progress',
    imageUrl: 'assets/images/ex-1.png',
    icon: Icons.self_improvement,
  ),
  ExerciseItems(
    id: 10,
    index: '2',
    title: 'ROTACIÓN DE TOBILLOS',
    description:
        'Rotación de tobillo hacia dentro y hacia fuera.',
    video: '/counter_riverpod',
    imageUrl: 'assets/images/ex-2.png',
    icon: Icons.transfer_within_a_station_outlined,
  ),
  ExerciseItems(
    id: 11,
    index: '3',
    title: 'SWINGS LATERALES - SWINGS FRONTALES',
    description:
        'Extender la pierna.',
    video: '/buttons',
    imageUrl: 'assets/images/ex-3.png',
    icon: Icons.trending_up_outlined,
  ),
  ExerciseItems(
    id: 12,
    index: '4',
    title: 'HAMSTRING SWEEPS',
    description:
        'Extensión de la pierna con balanceos hacia el frente.',
    video: '/cards',
    imageUrl: 'assets/images/ex-4.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 13,
    index: '5',
    title: 'TALONES AL GLUTEO',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-5.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 14,
    index: '6',
    title: 'SKIPPING ALTO',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-6.png',
    icon: Icons.whatshot,
  ),
    ExerciseItems(
    id: 15,
    index: '7',
    title: 'SKIPPING RUSO',
    description:
        'Velit nisi ipsum do excepteur nisi anim in aute voluptate.',
    video: '/cards',
    imageUrl: 'assets/images/ex-7.png',
    icon: Icons.whatshot,
  ),
];
