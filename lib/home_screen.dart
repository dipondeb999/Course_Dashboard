import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    itemDashboard(String title, IconData iconData, Color background) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      'Hi, Dipon!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    subtitle: Text(
                      'Good morning',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 16,
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/dipon.jpg'),
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                    child: GridView.count(
                        crossAxisCount: 2,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 30,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        itemDashboard('Videos', CupertinoIcons.play_rectangle, Colors.deepOrange),
                        itemDashboard('Analytics', CupertinoIcons.graph_circle, Colors.green),
                        itemDashboard('Audience', CupertinoIcons.person_2, Colors.purple),
                        itemDashboard('Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
                        itemDashboard('Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
                        itemDashboard('Upload', CupertinoIcons.add_circled, Colors.teal),
                        itemDashboard('About', CupertinoIcons.question_circle, Colors.blue),
                        itemDashboard('Contact', CupertinoIcons.phone, Colors.pinkAccent),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
