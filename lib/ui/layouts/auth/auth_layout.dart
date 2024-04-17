import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluweb/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:fluweb/ui/layouts/auth/widgets/custom_title.dart';
import 'package:fluweb/ui/layouts/auth/widgets/links_bar.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Scrollbar( 
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            size.width > 1000
                ? _DesktopBody(child: child)
                : _MobileBody(child: child),
        
            //links bar
            const LinksBar(),
          ],
        ),
      ),
    );
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child:  Column(
        children: [
          const SizedBox(height: 20),
          const CustomTitle(),
          SizedBox(
            width: double.infinity,
            height: 420,
            child: child,
          ),
          const SizedBox(
            width: double.infinity,
            height: 420,
            child: BackgroundTwitter(),
          )
        ],
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
      color: Colors.black87,
      child: Row(
        children: [
          const Expanded(child: BackgroundTwitter()),
          Column(
            children: [
              const SizedBox(height: 50),
              const CustomTitle(),
              const SizedBox(height: 50),
              SizedBox(child: child),
              
            ],
          )
        ],
      ),
    );
  }
}
