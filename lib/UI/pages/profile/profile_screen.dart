import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/profile/widgets/edit_profile.dart';
import 'package:water_market_user/UI/pages/profile/widgets/logout_button.dart';
import 'package:water_market_user/UI/pages/profile/widgets/profile_details.dart';
import 'package:water_market_user/UI/pages/profile/widgets/profile_tap.dart';
import 'package:water_market_user/UI/pages/profile/widgets/setting_swich.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Profile Image
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage("https://picsum.photos/50/50"),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: EditButton(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Full Name
              ProfileDetail(title: "Full Name", value: "Johnathan Doe"),
              SizedBox(height: 5),

              // Phone Number
              ProfileDetail(title: "Phone Number", value: "+1 234 567 8901"),
              SizedBox(height: 5),

              // Delivery Address
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ProfileDetail(
                      title: "Delivery Address",
                      value: "123 Water St, Springfield",
                    ),
                  ),
                  EditButton(),
                ],
              ),
              SizedBox(height: 10),

              // Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileTab(text: "Edit Profile"),
                  ProfileTab(text: "Order History"),
                  ProfileTab(text: "Saved Addresses"),
                ],
              ),
              SizedBox(height: 15),

              // Settings Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingSwitch(title: "Order Updates"),
                    SettingSwitch(title: "Promotions"),
                    ProfileDetail(title: "Change Password", value: ""),
                    ProfileDetail(title: "Language", value: "English"),
                  ],
                ),
              ),
              SizedBox(height: 15),

              // Logout Button
              LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
