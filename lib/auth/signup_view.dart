import 'package:chat_app_ui/auth/login_view.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Form(
                  key: formKey,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/107913047?v=4'),
                                ),
                                const Text(
                  'welcome Back',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                                ),
                                const SizedBox(
                  height: 20,
                                ),
                                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty ||value == '') {
                      return 'Please enter your name';
                    } else if (value.contains('@') || value.contains('.com')) {
                      return null;
                    } else {
                      return 'Please enter a valid email address';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outlined,
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.blue),
                    prefixIconColor: Colors.blue,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                                ),
                                const SizedBox(
                  height: 20,
                                ),
                                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty ||value == '') {
                      return 'Please enter your password';
                    } else if (value.length >= 6) {
                        return null;
                    } else {
                      return 'Please enter a valid password';
                      }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.blue),
                    prefixIconColor: Colors.blue,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                                ),
                                const SizedBox(
                  height: 20,
                                ),
                                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outlined,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                            color: Colors.blue,
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                    labelText: 'password',
                    labelStyle: const TextStyle(color: Colors.blue),
                    prefixIconColor: Colors.blue,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                                ),
                                const SizedBox(
                  height: 20,
                                ),
                                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                                ),
                                const SizedBox(
                  height: 20,
                                ),
                                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                                )
                              ]),
                ),
          ),
        ),
      ),
    );
  }
}
