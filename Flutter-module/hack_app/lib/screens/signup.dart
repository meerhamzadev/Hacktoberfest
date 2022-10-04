import 'package:flutter/material.dart';
import 'package:hack_app/screens/forget_password.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = false;
  final key = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  signUpFunc() {
  }
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      width: 2,
      color: Colors.white24,
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: size * 0.05),
                    Form(
                      key: key,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: name,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: const TextStyle(color: Colors.white54),
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                          ),
                          SizedBox(
                            height: size * 0.05,
                          ),
                          TextFormField(
                            controller: email,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: const TextStyle(color: Colors.white54),
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                          ),
                          SizedBox(
                            height: size * 0.05,
                          ),
                          TextFormField(
                            controller: password,
                            obscureText: !showPassword,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(color: Colors.white54),
                              focusedBorder: border,
                              enabledBorder: border,
                              suffixIcon: IconButton(
                                onPressed: togglePasswordVisibility,
                                icon: Icon(
                                  showPassword == true
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPassword(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Forget your password?',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          GestureDetector(
                            onTap: () => signUpFunc(),
                            child: Container(
                              height: size * 0.08,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                text:
                                    'By creating an account, you agree with our ',
                                style: TextStyle(color: Colors.white54),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'Terms and Conditions and Privacy Statement',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size * 0.1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Dont have an account yet?',
                        style: TextStyle(color: Colors.white54),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
