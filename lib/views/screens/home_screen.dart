import 'package:agro_ona/utils/constants.dart';
import 'package:agro_ona/views/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightPrimaryBackgroundColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/nature.jpg',
            fit: BoxFit.cover,
            height: size.height,
          ),
          Positioned.fill(
            top: size.height * 0.15,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Agro-Ona',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: kLightSecondaryColor,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      ProfileButton(
                          onClick: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('hello')));
                          },
                          icon: Icons.person,
                          title: 'Admin'),
                      const SizedBox(
                        height: 30,
                      ),
                      ProfileButton(
                          onClick: () {},
                          icon: Icons.business,
                          title: 'Marketing'),
                      const SizedBox(
                        height: 30,
                      ),
                      ProfileButton(
                          onClick: () {},
                          icon: Icons.shopping_cart,
                          title: 'Purchase'),
                      const SizedBox(
                        height: 30,
                      ),
                      ProfileButton(
                          onClick: () {},
                          icon: Icons.trending_up,
                          title: 'Sales'),
                      const SizedBox(
                        height: 30,
                      ),
                      ProfileButton(
                          onClick: () {},
                          icon: Icons.calendar_today,
                          title: 'Order Schedule'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
