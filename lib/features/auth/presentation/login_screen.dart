import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/images_path.dart';
import '../../splash/presentation/widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kAuthBack), fit: BoxFit.fill)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, bottom: 0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to 7Krave',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        children: [
                          Text(
                            'Sign in',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: Row(children: const [
                              Text(
                                'Help',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Icon(
                                Icons.question_mark,
                                size: 17,
                                color: Colors.blue,
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Phone Number'),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                prefixIcon: CountryCodePicker(
                                  initialSelection: 'eg',
                                  favorite: const ['+20', 'eg'],
                                  showCountryOnly: true,
                                ),
                                hintText: 'Eg.50666205'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: DefaultButton(
                              padding: 15,
                              onPressed: () {},
                              title: 'Sign in',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  height: 4,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Or'),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  height: 4,
                                ),
                              ),
                            ],
                          ),
                          SocialButton(
                              prefix: const Icon(
                                FontAwesomeIcons.google,
                                color: Colors.deepOrangeAccent,
                              ),
                              title: 'Sign Up with Google',
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          FullTextButton(
                            onPressed: () {},
                            title: 'Don\'t have an account?',
                            buttonTitle: 'Sign Up Here',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Use The Application according to the policy rules .'
                            'Any kind of violation will be sanched',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.caption!,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
