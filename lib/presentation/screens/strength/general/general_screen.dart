import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_running_app/config/exercises/exercise_items.dart';
import 'package:smart_running_app/presentation/widgets/custom_list_tile.dart';
// import 'package:smart_running_app/presentation/screens/strength/general/exerciseDetailScreen.dart';

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
          return CustomListTile(menuItems: menuItems);
        });
  }
}