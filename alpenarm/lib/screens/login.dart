import 'package:alpenarm/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            'assets/mountain.jpg',
            height: MediaQuery.of(context).size.height,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
              child: SingleChildScrollView(
                child: Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 41,
                      top: 57,
                      left: 36,
                      right: 36,
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            width: double.infinity,
                            child: const Text(
                              'Welcome',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Email'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 0, bottom: 26),
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Sign in'),
                            //style: Theme.of(context).outlinedButtonTheme.style,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20, top: 4),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                MediaQuery.of(context).size.width,
                                48,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              primary: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
