import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';
import 'package:skedaddle/Common/themeBody.dart';
import 'package:skedaddle/Config/app_pages.dart';

class RegistrationCart extends StatefulWidget {
  @override
  _RegistrationCartState createState() => _RegistrationCartState();
}

class _RegistrationCartState extends State<RegistrationCart> {
  final tickid = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return themeBody(
      title: Text(
        'Register Now',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, top: 25, right: 28),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Row(
                  children: [
                    Text(
                      'Registration Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.edit,color: Colors.white,)
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      'Total',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                  ]),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Text(
                        "Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard and typesetting",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Text(
                        "\$38.75",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 20.0),
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Text(
                        "\$38.57 ",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 20.0),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              const Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Text(
                        "Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard and typesetting",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Text(
                        "\$38.57",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 20.0),
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Text(
                        "\$38.57 ",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 20.0),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              const Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        "Base Cost:",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      Text(
                        "Processing Fee:",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "\$38.75",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 16.0),
                      ),
                      Text(
                        "\$3.75",
                        style:
                            TextStyle(color: Color(0xFF04EFB0), fontSize: 16.0),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              const Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text(
                      "Total:",
                      style:
                          TextStyle(color: Color(0xFF04EFB0), fontSize: 16.0),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Text(
                    "\$42.50",
                    style: TextStyle(color: Color(0xFF04EFB0), fontSize: 16.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Payment Radio Button",
                  style: TextStyle(color: Color(0xFF04EFB0), fontSize: 24.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: themeButton(
                  roundedBorder: true,
                  name: 'Confirm',
                  onClick: () {
                    Get.toNamed(Routes.successpayment);
                  },
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
