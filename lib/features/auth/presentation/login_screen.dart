import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../const/strings.dart';
import '../../../core/common_widget/text_form_field.dart';
import '../../../routing/route_names.dart';
import '../../splash/presentation/widgets/buttons.dart';
import '../common_widget/auth_scaffold.dart';
import '../common_widget/sign_buttons.dart';
import '../common_widget/texts_lables.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      top: MediaQuery.of(context).size.height / 3.5,
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, bottom: 0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeCaption(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: AuthTitle(title: 'Sign in'),
              ),
              AppTextForm(
                title: kPhoneNumberTitle,
                prefixIcon: CountryCodePicker(
                  initialSelection: 'eg',
                  favorite: const ['+20', 'eg'],
                  showCountryOnly: true,
                ),
                hintText: kPhoneNumberHint,
              ),
              SizedBox(height: 25),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 22.0),
                  child: SignInButtons(
                    title: 'Sign in',
                    googleTitle: kSignInGoogle,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SwithFromLoginToSignUp(
                  spacing: 0,
                  question: kRegisterPhrase,
                  answer: ' Sign Up Here',
                  onPressed: () {
                    Navigator.pushNamed(context, kSignupScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwithFromLoginToSignUp extends StatelessWidget {
  SwithFromLoginToSignUp({
    Key? key,
    required this.question,
    required this.answer,
    this.spacing = 20,
    required this.onPressed,
  }) : super(key: key);
  final String question;
  final String answer;
  double spacing;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: spacing,
        ),
        FullTextButton(
          onPressed: onPressed,
          title: question,
          buttonTitle: answer,
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          kPolicy,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.caption!,
        ),
      ],
    );
  }
}
