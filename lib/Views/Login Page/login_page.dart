import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Utils/utils.dart';
import '../Main Tab View/main_tab_view.dart';
import 'sign_up.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController() ;
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  final _auth = FirebaseAuth.instance;

  void login(){
    _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text.toString()
    ).then((value){
      Utils().toastMessage(value.user!.email.toString());
    }).onError((error, stackTrace){
      Utils().toastMessage(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xFFd5c28f), Colors.white],
            ),
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/BorderedLogo.png", width: 350,),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFFC7AE6A),
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.alternate_email),
                      labelStyle: const TextStyle(color: Color(0xFF3d072f)),
                      filled: true,
                      fillColor: const Color(0xFFd5c28f),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock_open),
                      labelStyle: const TextStyle(color: Color(0xFF3d072f)),
                      filled: true,
                      fillColor: const Color(0xFFd5c28f),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter Password';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: (){
                            Get.to(()=> SignUpView());
                          },
                          child: const Text("Sign up"))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      login();
                      // Get.to(() => const MainTabView());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff981375),
                    minimumSize: const Size(350, 50),
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFFC7AE6A),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
