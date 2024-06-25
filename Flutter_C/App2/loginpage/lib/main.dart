import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  

  // controllers

  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // keys

  //global keys<FormFieldState> userNameKey = globalKey<FormFieldState>();
  //global keys<FormFieldState> passwordKey = globalKey<FormFieldState>();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.black,
        title:const Text("Login page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network("data:image/png;base64,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",
              width: 90,
              height: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: userNameTextEditingController,
                //key: userNamekay,
                decoration: InputDecoration(
                  hintText: "Enterusername",
                  label: const Text("Enterusername"),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value){
                    print("In USER NAME VALIDATOR");
                    if ( value == null || value.isEmpty){
                      return"please enter username";
                    }else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                controller: passwordTextEditingController,
                //key: userNamekay,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                  validator: (value){
                    print("In PASSWORD VALIDATOR");
                    if ( value == null || value.isEmpty){
                      return"please enter your Password";
                    }else{
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){
                    bool loginValidated = _formKey.currentState!.validate();

                    if (loginValidated){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Successful"),
                        ),
                      );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Faild"),
                        ),
                      );  
                    }
                  },
                  child: const Text("Login"),
                ) 
              ],
            ),
          ),   
        ),
      );
  }
}
