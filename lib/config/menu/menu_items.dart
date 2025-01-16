import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final List<MenuItem>? subItems; // Lista opcional de subítems

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
    this.subItems, // Subítems son opcionales
  });
}
const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Calentamiento',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.self_improvement,
    subItems: [
      MenuItem(
        title: 'Estiramientos',
        subTitle: 'Estiramientos básicos',
        link: '/stretching',
        icon: Icons.fitness_center,
      ),
      MenuItem(
        title: 'Movilidad',
        subTitle: 'Ejercicios de movilidad',
        link: '/mobility',
        icon: Icons.directions_run,
      ),
    ],
  ),
  MenuItem(
    title: 'Fuerza',
    subTitle: 'Counter using Riverpod',
    link: '/counter_riverpod',
    icon: Icons.transfer_within_a_station_outlined,
     subItems: [
      MenuItem(
        title: 'General',
        subTitle: 'Ejercicios Generales por ahora',
        link: '/general',
        icon: Icons.fitness_center,
      ),
      MenuItem(
        title: 'Movilidad',
        subTitle: 'Ejercicios de movilidad',
        link: '/mobility',
        icon: Icons.directions_run,
      ),
    ],
  ),
  MenuItem(
    title: 'Velocidad',
    subTitle: 'Variable botones con Fluttwe',
    link: '/buttons',
    icon: Icons.trending_up_outlined,
     subItems: [
      MenuItem(
        title: 'Estiramientos',
        subTitle: 'Estiramientos básicos',
        link: '/stretching',
        icon: Icons.fitness_center,
      ),
      MenuItem(
        title: 'Movilidad',
        subTitle: 'Ejercicios de movilidad',
        link: '/mobility',
        icon: Icons.directions_run,
      ),
    ],
  ),
  MenuItem(
    title: 'Resistencia',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.whatshot,
     subItems: [
      MenuItem(
        title: 'Estiramientos',
        subTitle: 'Estiramientos básicos',
        link: '/stretching',
        icon: Icons.fitness_center,
      ),
      MenuItem(
        title: 'Movilidad',
        subTitle: 'Ejercicios de movilidad',
        link: '/mobility',
        icon: Icons.directions_run,
      ),
    ],
  ),
];