import 'package:ablego/core/app_export.dart';
import 'package:ablego/core/utils/validation_functions.dart';
import 'package:ablego/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                _openCountryPicker(context);
              },
              child: Padding(
                padding: getPadding(
                  left: 33,
                  top: 122,
                  bottom: 9,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                      height: getVerticalSize(
                        6,
                      ),
                      width: getHorizontalSize(
                        10,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 8,
                        bottom: 10,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 26,
                        bottom: 4,
                      ),
                      child: Text(
                        "+${country.phoneCode}",
                        style: AppStyle.txtArialMT17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                width: getHorizontalSize(
                  185,
                ),
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                hintText: "lbl_mobile_number".tr,
                margin: getMargin(
                  left: 16,
                  top: 123,
                  right: 6,
                  bottom: 8,
                ),
                variant: TextFormFieldVariant.None,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "Please enter valid phone number";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        Container(
          height: getVerticalSize(
            1,
          ),
          width: getHorizontalSize(
            343,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.blueGray50,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
