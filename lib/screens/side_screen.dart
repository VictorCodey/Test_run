import 'package:flutter/material.dart';
import '../models/menu_model.dart';

class SideScreen extends StatefulWidget {
  const SideScreen({Key? key}) : super(key: key);

  @override
  State<SideScreen> createState() => _SideScreenState();
}

class _SideScreenState extends State<SideScreen> {
  final int _currentIndex = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage(''),
                  radius: 40.0,
                ),
                SizedBox(height: 8.0),
                Text('Adonis Vic',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: all.asMap().entries.map((MapEntry map)=> _buildMenuItem(map.key)).toList(),
          ),
        ],
      ),
    );
  }
  Widget _buildMenuItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex == index;
        });
      },
      child: ListTile(
        minLeadingWidth: 30.0,
        onTap: () {
          // Navigator.of(context).push(builder: MaterialPageRoute(_) => Settings())
        },
        leading: Icon(all[index].icon),
        title: Text(all[index].title),
        subtitle: const Text('stay with me'),
      ),
    );
  }
}
