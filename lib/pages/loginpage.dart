import 'package:catalog_app/utils/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child: Center(
      //   child: Text('Login Page',
      //   style: TextStyle(
      //     fontSize:20,
      //     color: Colors.blue,
      //     fontWeight: FontWeight.bold),
      //   ),
      // ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginimage.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     //  // ignore: avoid_print
                    //     //  print("Hi Ashmit");
                    //     Navigator.pushNamed(context, MyRoute.HomeRoute);
                    //   },
                    //   child: const Text("Login"),
                    // )
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoute.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child:changeButton? Icon(
                          Icons.done,
                          color: Colors.white,
                          )
                         :Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,

                          borderRadius: BorderRadius.circular(changeButton?50 : 8),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
