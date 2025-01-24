import 'package:flutter/material.dart';
import 'package:smart_running_app/config/exercises/exercise_items.dart';
import 'package:smart_running_app/presentation/screens/strength/general/exerciseDetailScreen.dart';

class CustomListTile extends StatelessWidget {
  final ExerciseItems menuItems;

  const CustomListTile({required this.menuItems, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(menuItems.index.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(menuItems.imageUrl),
            backgroundColor: Colors.transparent,
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