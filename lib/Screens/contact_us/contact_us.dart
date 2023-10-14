import 'dart:convert';

import 'package:expandable_search_bar/expandable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:http/http.dart' as http;
import 'package:yesareem_website/Constants/app_utils.dart';
import 'package:yesareem_website/Screens/home/search_bar.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.black,
      title: "Contact Us",
      child: Scaffold(
        backgroundColor: AppColors.primaryColors,
        key: scaffoldKey,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 75),
          child: SearchAndHamburgerWidget(
            scaffoldKey: scaffoldKey,
            eventsKey: scaffoldKey,
            aboutKey: scaffoldKey,
          ),
        ),
        body: mainBackDrop(context),
      ),
    );
  }

  Container mainBackDrop(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.primaryColors,
      height: MediaQuery.of(context).size.height - 75,
      child: MediaQuery.of(context).size.width > 1320
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Your Questions, Our Guidance.\nContact Us Today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                contactUsCard(context, false)
              ],
            )
          : ScrollConfiguration(
              behavior: const ScrollBehavior()
                  .copyWith(scrollbars: false, overscroll: false),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Your Questions, Our Guidance.\nContact Us Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    contactUsCard(context, true),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Container contactUsCard(BuildContext context, bool constant) {
    return Container(
      width: MediaQuery.of(context).size.width < 600
          ? MediaQuery.of(context).size.width - 64
          : constant
              ? MediaQuery.of(context).size.width / 2
              : MediaQuery.of(context).size.width / 3.5,
      height: constant ? 550 : MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Contact Us',
                style: TextStyle(
                  color: AppColors.primaryColors,
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Full Name *",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name Can\'t be empty';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "E-mail Address *",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text);
                  if (value == null || value.isEmpty) {
                    return 'E-mail Can\'t be empty';
                  } else if (!emailValid) {
                    return "E-mail should be valid";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: subjectController,
                decoration: InputDecoration(
                  hintText: "Subject",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextFormField(
                controller: contentController,
                minLines: 5,
                maxLines: 5,
                maxLength: 256,
                decoration: InputDecoration(
                  hintText: "Content *",
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Content Can\'t be empty';
                  } else {
                    return null;
                  }
                },
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () async {
                  if (!isLoading && formKey.currentState!.validate()) {
                    setState(() {
                      isLoading = true;
                    });
                    final String date =
                        '${'${DateTime.now().day}'} ${AppUtils.monthName(DateTime.now().month)} ${DateTime.now().year}';
                    final String time =
                        '${DateTime.now().hour % 12}:${DateTime.now().minute} ${DateTime.now().hour > 12 ? 'PM' : 'AM'}';
                    final parameterString =
                        "?name=${nameController.text.trim()}&email=${emailController.text.trim()}&date=$date&time=$time&subject=${subjectController.text}&content=${contentController.text}";
                    const url =
                        'https://script.google.com/macros/s/AKfycby_SPYyhAf6XgA1pdcjVLhHF5mNbyx3F_V8xHQvY1eKVHcDDQA9pgS4WxghoQ4-gz1n_w/exec';
                    final response =
                        await http.get(Uri.parse(url + parameterString));
                    final body = await jsonDecode(response.body);
                    if (body['status'] == "SUCCESS") {
                      nameController.clear();
                      emailController.clear();
                      subjectController.clear();
                      contentController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Message sent successfully'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Center(child: Text('Message sent failed')),
                          backgroundColor: Colors.red,
                        ),
                      );
                      print(response.body);
                    }
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
              Center(
                child: Text(
                  'You can also connect us at ${MediaQuery.of(context).size.width < 300 ? '\n' : ''}www.yesareem@gmail.com',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
