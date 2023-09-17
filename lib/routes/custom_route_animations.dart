part of 'app_router.dart';

CustomRoute CustomRouteAniamtion() {
  return CustomRoute(
      page: ContactRoute.page,
      durationInMilliseconds: 1500,
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> seconderyAnimation, Widget child) {
        const begin = Offset(-1.0, -1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutCubic;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        var radius = animation.value * MediaQuery.of(context).size.width * 3;
        return SlideTransition(
          position: offsetAnimation,
          child: ClipPath(
            clipper: CircleClipper(radius: radius),
            child: child,
          ),
        );
      });
}

class CircleClipper extends CustomClipper<Path> {
  final double radius;

  CircleClipper({required this.radius});

  @override
  Path getClip(Size size) {
    return Path()
      ..addOval(Rect.fromCircle(center: Offset.zero, radius: radius));
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
