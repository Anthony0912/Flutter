import 'package:flutter/material.dart';
import 'package:listview_widget/model/contactModel.dart';
import 'package:listview_widget/pages/contacList.dart';

class Contact extends StatelessWidget {
  _buildList() {
    return <ContactModel>[
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
      const ContactModel(
          name: "Anthony Cardona", email: "acardona09@gmail.com"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ContactList(_buildList()),
    );
  }
}
