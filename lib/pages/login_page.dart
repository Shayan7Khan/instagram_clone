import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/reuseable_text_form_field.dart';

class LoginPage extends StatelessWidget {
  late double deviceHeight;
  late double deviceWidth;
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: BackButton(),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: deviceHeight * .05, horizontal: deviceHeight * .018),
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
                SizedBox(height: deviceHeight * .020),
                Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * .024),
                ElevatedButton(
                  onPressed: () {},
          
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    minimumSize: WidgetStatePropertyAll<Size>(
                      Size(deviceWidth * 0.915, deviceHeight * 0.054),
                    ),
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      Colors.blueAccent,
                    ),
                  ),
                  child: Text(
                    "Log In",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * .05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blueAccent),
                    SizedBox(width: deviceWidth * .025),
                    InkWell(
                      onTap: () {
                        if(kDebugMode){
                          print("Log in with Facebook");
                        }
                      },
                      child: Text(
                        "Log in with Facebook",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
                    if (kDebugMode) {
                      print('Sign up');
                    }
                  },
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(text: "Don't have an account ? "),
                        TextSpan(
                          text: "Sign up.",
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
