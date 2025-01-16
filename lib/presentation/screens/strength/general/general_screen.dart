import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_running_app/config/exercises/exercise_items.dart';
import 'package:smart_running_app/presentation/screens/strength/general/exerciseDetailScreen.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});
       static const String name = 'general_screen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('General'),
      ),
      body: _exerciseList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _exerciseList extends StatelessWidget {
  const _exerciseList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: appExerciseItems.length,

        //Builder es decir que se va a construir en tiempo de ejecucion
        itemBuilder: (context, index) {
          final menuItems = appExerciseItems[index];
          return _CustomListTile(menuItems: menuItems);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  // final int index;
  final ExerciseItems menuItems;

  const _CustomListTile({ required this.menuItems, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min, // Para ajustar el tamaño del Row
        children: [
          Text(menuItems.index, style: TextStyle(fontWeight: FontWeight.bold)), // Índice
          const SizedBox(width: 10), // Espacio entre el índice y la imagen
          CircleAvatar(
            radius: 20, // Tamaño del avatar
            backgroundImage: AssetImage(menuItems.imageUrl),
            backgroundColor: Colors.transparent, // Opcional, para evitar bordes blancos
          ),
        ],
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.description),
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExerciseDetailScreen(id: menuItems.id),
          ),
        );
      },
    );
  }
}
