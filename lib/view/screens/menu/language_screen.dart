import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/custom_back_button.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  // Variable to hold the selected language code
  String? _selectedLanguage;

  // List of languages
  final List<Map<String, String>> _languages = [
    {'code': 'en', 'name': 'English', 'flag': 'assets/locale/en.png'},
    {'code': 'ne', 'name': 'Nepali', 'flag': 'assets/locale/ne.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MyAppBar(
            leading: CustomBackButton(),
            title: 'Language',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    // Displaying the list of languages
                    Column(
                      children: _languages.map((language) {
                        // Determine if this language is selected
                        bool isSelected = _selectedLanguage == language['code'];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedLanguage = language['code'];
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected
                                      ? AppColor.primary
                                      : AppColor
                                          .secondary, // Change border color based on selection
                                ),
                                color: AppColor.secondary,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Radio<String>(
                                    activeColor: AppColor.primary,
                                    value: language['code']!,
                                    groupValue: _selectedLanguage,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedLanguage = value;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    language['flag']!,
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    language['name']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Change Language button
                    GestureDetector(
                      onTap: () {
                        // Handle language change action here
                        if (_selectedLanguage != null) {
                          // You can implement the logic to change the app's language
                          print('Language changed to: $_selectedLanguage');
                        } else {
                          // Handle case where no language is selected
                          print('No language selected');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 15,
                        decoration: const BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Change Language',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
