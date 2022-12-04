import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../home/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key, this.title }) : super(key: key);
  final String? title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: const InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: const Text('Log In',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    final forgotLabel = TextButton(
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              )
            ],
          ),
          Center(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width/1.5,
                height: MediaQuery.of(context).size.height/1.5,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 50.0),
                    Center(
                      child: Column(
                        children: const [
                          Text(
                            "W A R C O P",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Warehouse of Cables, ONT, and Patchcords",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    email,
                    const SizedBox(height: 8.0),
                    password,
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        MediaQuery.of(context).size.width < 550
                        ?
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked, 
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                                const Text("Remember Me")
                              ],
                            ),
                            forgotLabel
                          ],
                        )
                        :
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked, 
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                                const Text("Remember Me")
                              ],
                            ),
                            forgotLabel
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 18.0),
                    loginButton
                  ],
                ),
              )
            ),
          )
        ]),
    );
  }
}