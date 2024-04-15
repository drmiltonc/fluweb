import 'package:flutter/material.dart';
import 'package:fluweb/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:fluweb/ui/layouts/auth/widgets/custom_title.dart';
import 'package:fluweb/ui/layouts/auth/widgets/links_bar.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children:  [
          //desktop
        _DesktopBody(child: child,),
        //mobile

        //links bar
        const LinksBar()
        ]
        
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.9,
      color: Colors.pink,
      child: Row(
        children: [
          const BackgroundTwitter(),
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.amber,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const CustomTitle(),
                const SizedBox(height: 50),
                Expanded(child: child)

              ],
            ),
          )
        ],
      ),
    );
  }
}