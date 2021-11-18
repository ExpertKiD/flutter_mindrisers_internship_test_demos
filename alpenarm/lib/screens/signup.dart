import 'package:alpenarm/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/mountain.jpg',
              height: MediaQuery.of(context).size.height.roundToDouble(),
              cacheHeight: MediaQuery.of(context).size.height.round(),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 62,
              left: 62,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    cacheWidth: 38,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Alpen',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        'Arm',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const Text(
                    'In the name of health!',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: AppColors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: 520,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 54,
                    bottom: 44,
                    left: 36,
                    right: 36,
                  ),
                  child: Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'First name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Last name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 27,
                          top: 40,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Create Account',
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          SizedBox(
                            height: 24,
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Sign In'),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
