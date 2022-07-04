enum NavigationRoutes {
  main('Login'),
  dashboard('Home'),
  projects('Projects'),
  tasks('tasks');

  const NavigationRoutes(this.placeTitle);
  final String placeTitle;
}
