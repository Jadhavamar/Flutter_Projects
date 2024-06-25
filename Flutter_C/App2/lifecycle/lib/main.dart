import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() { 
    print("In my createState");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController=TextEditingController();
  bool togglBtnFlag=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("In My INIT-STATE");
  }

  @override
  void didChangeDependencies() {
    
    super.didChangeDependencies();
    print("In My didChangeDependencies method");
  }
  
  @override
  void setState(VoidCallback fn) {
  
    super.setState(fn);
    print("In My SET-STATE");
  }

  @override
  void deactivate() {
    
    super.deactivate();
    print("In my Deactivate Method");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("In My dispose method");
  }

  @override
  Widget build(BuildContext context){
    if(togglBtnFlag==false){
      return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    togglBtnFlag=true;
                  });
                },
                child: Text("toggle to another"),
              )
            ],
          ),
        ),
      );
    }else{
      return Scaffold(
        body: Center(
          child: Container(
            child: Text("in another scaffold"),
          ),
        ),
      );
    }
  }
}
