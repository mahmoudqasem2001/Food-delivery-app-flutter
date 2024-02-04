import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:line_icons/line_icons.dart';

class AccountPage extends StatefulWidget {
  static const String routeName = '/account';

  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Account'),
        backgroundColor: AppColors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SizedBox(
              child: Image.asset(
            'assets/images/myAccount.jpg',
            height: 170,
          )),
          _buildAccountInfo('Name:', 'Mahmoud Qasem', LineIcons.user),
          _buildAccountInfo('Phone Number:', '+970599344870', LineIcons.phone),
          _buildAccountInfo('Gender:', 'Male', LineIcons.male),
          _buildAccountInfo('City:', 'Jenin', LineIcons.mapMarker),
          _buildAccountInfo('Address:', 'Jalqamous', LineIcons.home),
        ],
      ),
    );
  }

  Widget _buildAccountInfo(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.shade50,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      size: 30,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
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
