import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_page.dart';
import 'package:instagram_clone/widgets/reusable_elevated_button.dart';
import 'package:instagram_clone/widgets/reuseable_text_form_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: deviceHeight * .05,
              horizontal: deviceHeight * .018,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Instagram',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: deviceHeight * .09),
                ReuseableTextFormField(hintText: 'Email'),
                SizedBox(height: deviceHeight * .024),
                ReuseableTextFormField(hintText: 'Password'),
                SizedBox(height: deviceHeight * .024),
                ReuseableTextFormField(hintText: 'Confirm Passowrd'),
                SizedBox(height: deviceHeight * .05),

                ReusableElevatedButton(
                  name: 'Sign Up',
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                SizedBox(height: deviceHeight * .05),

                Row(
                  children: [
                    Container(width: 132, height: 0.3, color: Colors.grey),
                    Spacer(),
                    Text(
                      "OR",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(width: 132, height: 0.3, color: Colors.grey),
                  ],
                ),
                SizedBox(height: deviceHeight * .05),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(text: "Alerady have an account ? "),
                        TextSpan(
                          text: "Log in.",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
