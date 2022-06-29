import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/images_path.dart';
import '../../../const/strings.dart';
import '../../../core/common_widget/text_form_field.dart';
import '../../splash/presentation/widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      top: MediaQuery.of(context).size.height / 4,
      body: Scaffold(
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
                child: AppTextForm(
                  title: kPhoneNumberTitle,
                  prefixIcon: CountryCodePicker(
                    initialSelection: 'eg',
                    favorite: const ['+20', 'eg'],
                    showCountryOnly: true,
                  ),
                  hintText: kPhoneNumberHint,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              const Expanded(
                flex: 2,
                child: SignInButtons(),
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
                      title: kRegisterPhrase,
                      buttonTitle: 'Sign Up Here',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      kPolicy,
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
    );
  }
}

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    Key? key,
    required this.top,
    required this.body,
  }) : super(key: key);
  final double top;
  final Widget body;
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
          top: top,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - top,
            width: MediaQuery.of(context).size.width,
            child: body,
          ),
        ),
      ],
    );
  }
}

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
    );
  }
}
