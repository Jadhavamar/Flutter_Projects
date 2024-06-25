import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowData(
        id: 1,
        name: "Amar",
        username: "Jadhav",
        skill: "NO",
        child: MaterialApp(
          home: MyApp(),
        ));
  }
}

class ShowData extends InheritedWidget {
  int? id;
  String? name;
  String? username;
  String? skill;
  ShowData(
      {super.key,
      required super.child,
      this.id,
      this.name,
      this.username,
      this.skill});
  static ShowData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShowData>()!;
  }

  bool updateShouldNotify(ShowData oldwidget) {
    if (id != oldwidget.id ||
        name != oldwidget.name ||
        username != oldwidget.username ||
        skill != oldwidget.skill) {
      return true;
    } else {
      return false;
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  Widget build(BuildContext context) {
    ShowData obj = ShowData.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const Text(
            "Employee Data",
            
            
          ),
          backgroundColor: Colors.green),
      body: Column(
        
        children: [
          TextField(
            controller: idcontroller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              hintText: "ID",
            ),
          ),

          const SizedBox(
                height: 20,
              ),


          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              hintText: "name",
            ),
          ),

          const SizedBox(
                height: 20,
              ),

          TextField(
            controller: usernamecontroller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              hintText: "Username",
            ),
          ),

           const SizedBox(
                height: 40,
              ),
          GestureDetector(
            onTap: () {
              obj.username = usernamecontroller.text;
              obj.name = namecontroller.text;
              obj.id = int.parse(idcontroller.text);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen2();
              }));
            },
            
            child: Container(
              height: 50,
              width: 100,
              color: Colors.green,
              child: const Text("Submit"),
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});
  State<Screen2> createState() => _Screen2();
}

class _Screen2 extends State<Screen2> {
  Widget build(BuildContext context) {
    ShowData obj = ShowData.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("login info"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${obj.id}"),
          Text(obj.name!),
          Text(obj.username!),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen3();
              }));
            },
            child: Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: const Text("Add skills"),
            ),
          )
        ],
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    ShowData obj = ShowData.of(context);
    TextEditingController skillcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Skills"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          TextField(
            controller: skillcontroller,
            decoration: const InputDecoration(
              hintText: "Add skill",
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                obj.skill = skillcontroller.text;
              });
            },
            child: Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: const Text("Add"),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(child: Text(obj.skill!),color: Colors.green,),
        ],
      ),
    );
  }
}
