import 'package:flutter/material.dart';


void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(primaryColor:Color(0xFF33CA7F) ),
      home: Scaffold(
       
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Need It Now',
                  style: TextStyle(
                    fontFamily: 'Product',
                      color: Color(0xFF33CA7F),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20, fontFamily: 'Product'),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFF33CA7F)),
                  ),
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Color(0xFF33CA7F))
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFF33CA7F))),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFF33CA7F)),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              style: TextButton.styleFrom(primary: Color(0xFF33CA7F)),
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFF33CA7F) ),
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('No account yet?'),
                TextButton(
                  style: TextButton.styleFrom(primary: Color(0xFF33CA7F)),
                  child: const Text(
                    'Sign Up!',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
