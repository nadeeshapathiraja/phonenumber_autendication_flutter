import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CountryCodePicker(
              onChanged: print,
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: 'IT',
              favorite: ['+39', 'FR'],
              countryFilter: ['IT', 'FR'],
              showFlagDialog: false,
              comparator: (a, b) => b.name.compareTo(a.name),
              //Get the country information relevant to the initial selection
              onInit: (code) =>
                  print("on init ${code.name} ${code.dialCode} ${code.name}"),
            ),
            CountryCodePicker(
              onChanged: print,
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: 'IT',
              favorite: ['+39', 'FR'],
              countryFilter: ['IT', 'FR'],
              // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
              flagDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: print,
                hideMainText: true,
                showFlagMain: true,
                showFlag: false,
                initialSelection: 'TF',
                hideSearch: true,
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                alignLeft: true,
              ),
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (e) => print(e.toLongString()),
                initialSelection: 'TF',
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                favorite: ['+39', 'FR'],
              ),
            ),
            SizedBox(
              width: 100,
              height: 60,
              child: CountryCodePicker(
                enabled: false,
                onChanged: (c) => c.name,
                initialSelection: 'TF',
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                favorite: ['+39', 'FR'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
