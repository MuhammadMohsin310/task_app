import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:tasks_app/add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  var advanceDrawer = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advanceDrawer,
      drawer: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 180,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "M.Mohsin",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 39,
            ),
            Row(
              children: const [
                Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Add new task",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: const [
                Icon(
                  Icons.delete_sweep_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Delete all tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: const [
                Icon(
                  Icons.edit_off_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Edit profile",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: const [
                Icon(
                  Icons.contact_support_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Support",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: const [
                Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Exit",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      )),
      backdropColor: Color.fromARGB(255, 61, 190, 230),
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(10),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu_open,
                        color: Color.fromARGB(255, 116, 114, 114),
                      ),
                      onPressed: () {
                        drawerControl();
                      },
                    ),
                    const SizedBox(
                      width: 240,
                    ),
                    const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 116, 114, 114),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "what's up, ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mohsin",
                      style: TextStyle(
                          color: Color.fromARGB(255, 61, 190, 230),
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "TODAYS TASKS",
                      style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            116,
                            114,
                            114,
                          ),
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(
                      Icons.checklist_outlined,
                      color: Color.fromARGB(255, 116, 114, 114),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "You have no task for today!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 61, 190, 230),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 38,
                ),
                Image.asset(
                  "assets/images/1.png",
                  height: 220,
                  width: 280,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 270,
                    ),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Color.fromARGB(255, 61, 190, 230),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return AddTask();
                          }));
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void drawerControl() {
    advanceDrawer.showDrawer();
  }
}
