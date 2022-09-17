abstract class AppEvents {
  Object? arguments;
  AppEvents(this.arguments);
}

class Click extends AppEvents {
  Click({Object? arguments}) : super(arguments);
}

class Get extends AppEvents {
  Get({Object? arguments}) : super(arguments);
}
