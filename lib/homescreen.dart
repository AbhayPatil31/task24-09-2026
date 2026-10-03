import 'package:flutter/material.dart';
import 'package:test/component/bottom_navigation.dart';
import 'package:test/component/custom_card.dart';
import 'package:test/component/employee_attendance.dart';
import 'package:test/component/header.dart';
import 'package:test/component/overview_card.dart';
import 'package:test/component/shortcut_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: Text(
              'Logo',
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
          ),

          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black87, size: 24),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black87,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                //card
                CustomCard(),
                const SizedBox(height: 8),
                //overview
                const OverviewHeader(title: 'Overview', actionText: 'View all'),
                SizedBox(height: 8),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    OverviewCard(
                      icon: Icons.school,
                      number: '\$1,234',
                      title: 'Total Students',
                      color: Colors.blueAccent,
                    ),
                    OverviewCard(
                      icon: Icons.people,
                      number: '12',
                      title: 'Total Staff',
                      color: Colors.greenAccent,
                    ),

                    OverviewCard(
                      icon: Icons.directions_car,
                      number: '85%',
                      title: 'Active Vehicles',
                      color: Colors.orangeAccent,
                    ),
                    OverviewCard(
                      icon: Icons.handyman,
                      number: '5',
                      title: 'Fees Pending',
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                SizedBox(height: 8),

                //Shortcuts
                const OverviewHeader(title: 'Shortcuts'),
                SizedBox(height: 8),
                IconLabelRow(
                  items: [
                    IconLabelButton(
                      icon: Icons.home,
                      label: 'Home',
                      onTap: () {},
                    ),
                    IconLabelButton(
                      icon: Icons.school,
                      label: 'School',
                      onTap: () {},
                    ),
                    IconLabelButton(
                      icon: Icons.people,
                      label: 'Staff',
                      onTap: () {},
                    ),
                    IconLabelButton(
                      icon: Icons.settings,
                      label: 'Settings',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                //Employee Attendance
                const OverviewHeader(
                  title: 'Employee Attendance',
                  actionText: 'Today', //can make dropdown here
                ),
                const SizedBox(height: 8),

                EmployeeAttendance(number: '75%', title: 'Present'),

                SizedBox(height: 8),
                //Todays Reminders
                const OverviewHeader(
                  title: 'Todays Reminders',
                  actionText: '+ Add',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
