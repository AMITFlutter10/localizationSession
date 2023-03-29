import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/text_filed.dart';
import 'package:localization/translations/locale_keys.g.dart';

import 'home_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool? isPassword;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          width: double.infinity,
                          height: h * 0.70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              // bottomRight: Radius.circular(50),
                              // topLeft: Radius.circular(50),
                              topRight: Radius.circular(100),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Form(
                              key: formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    LocaleKeys.title_Register.tr(),
                                    //   title_Register.tr(),
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal[200]
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFiledWidegt(
                                      lable: LocaleKeys.user_name.tr(),
                                      controller: nameController,
                                      type: TextInputType.name,
                                      suffixIcon: Icons.perm_identity,
                                      validate: (value) {
                                        if (value.length == 0) {
                                          return "Email cannot be empty ";
                                        } else {
                                          return null;
                                        }
                                      }),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFiledWidegt(
                                      lable: LocaleKeys.account_email.tr(),
                                      controller: emailController,
                                      type: TextInputType.emailAddress,
                                      // prefix: Icon(Icons.email),
                                      suffixIcon: Icons.email,
                                      validate: (value) {
                                        if (value.length == 0) {
                                          return "Email cannot be empty ";
                                        }
                                        if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                                            .hasMatch(value)) {
                                          return ("please enter valid email");
                                        } else {
                                          return null;
                                        }
                                      }),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFiledWidegt(
                                    lable: LocaleKeys.password.tr(),
                                    type: TextInputType.text,
                                    controller: passwordController,

                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: w * .5,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        if (formKey.currentState!.validate()) {

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Successfully Register.You Can Chat Now'),
                                              duration: Duration(seconds: 5),
                                            ),
                                          );
                                          //  Navigator.of(context).pop();
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                const HomeScreen(),
                                              ));

                                        }
                                      },
                                      child: Text(LocaleKeys.bottom_register.tr()),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(30)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                      },
                                      child: Text(
                                        LocaleKeys.choose_photo.tr(),
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.teal[200],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                LocaleKeys.have_account.tr(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                child: Text(
                                  LocaleKeys.Login_bottom.tr(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(onPressed: ()async{
                          await context.setLocale(const Locale('ar'));
                        }, child:const Text("Arabic")),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(onPressed: ()async{
                          await context.setLocale(const Locale('en'));
                        }, child:const Text("English")),
                      ],
                    ),
                  ),
                )),
          );
  }
}
