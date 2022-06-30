import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../const/strings.dart';
import '../../../core/common_widget/text_form_field.dart';
import '../common_widget/auth_scaffold.dart';
import '../common_widget/sign_buttons.dart';
import '../common_widget/texts_lables.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        isBackAppear: true,
        top: MediaQuery.of(context).size.height / 5,
        body: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, bottom: 0, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const WelcomeCaption(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: AuthTitle(title: 'Sign Up'),
              ),
              AppTextForm(
                title: kEmail,
                hintText: kPhoneNumberHint,
              ),
              SizedBox(height: 8),
              AppTextForm(
                title: kPhoneNumberTitle,
                prefixIcon: CountryCodePicker(
                  initialSelection: 'eg',
                  favorite: const ['+20', 'eg'],
                  showCountryOnly: true,
                ),
                hintText: kPhoneNumberHint,
              ),
              SizedBox(height: 8),
              AppTextForm(
                title: kPassword,
                hintText: kPhoneNumberHint,
              ),
              SizedBox(height: 16),
              const SignInButtons(title: 'Sign Up', googleTitle: kSignUpGoogle),
              SwithFromLoginToSignUp(
                spacing: 0,
                question: kLoginPhrase,
                answer: ' Sign in Here',
                onPressed: () {
                  Navigator.pushNamed(context, kLoginScreen);
                },
              ),
            ]),
          ),
        ));
  }
}
