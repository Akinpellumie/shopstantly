import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../helpers/theme_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../components/comment_widget.dart';

class ReviewWidget extends StatelessWidget {
  final Size size;
  const ReviewWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: kPostEntryBgColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 1.0,
                    color: kLightGrayColor,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kProfileBannerColor,
                          border: Border.all(color: Colors.white, width: 1.0),
                        ),
                        child: ClipOval(
                          child: Image.asset(AssetsPath.profileDp),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().postInputDecoration(
                          ' Comment',
                          'Write comment',
                          false,
                          Colors.transparent,
                        ),
                        validator: (v) {
                          if (!RequiredValidator(
                            errorText: '',
                          ).isValid(v)) {
                            // _loginViewModel.setError(
                            //   "User ID",
                            //   'Enter a valid user ID',
                            // );
                          } else {
                            //_loginViewModel.removeError("userId");
                          }
                          return null;
                        },
                        //controller: _loginViewModel.userIdController,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CommentWidget(
          size: size,
          name: 'Angel Lukaku',
          desc:
              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
          imagePath: AssetsPath.imageDp,
          date: '26 Feb',
        ),
        CommentWidget(
          size: size,
          name: 'Lionel Messi',
          desc:
              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
          imagePath: AssetsPath.imageDp,
          date: '27 Feb',
        ),
        CommentWidget(
          size: size,
          name: 'Anjelina Jolly',
          desc:
              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
          imagePath: AssetsPath.imageDp,
          date: '29 Feb',
        ),
      ],
    );
  }
}
