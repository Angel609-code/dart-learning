// Class with static properties and methods
class Tools {
  // Static property
  static const List<String> toolsList = ['Hammer', 'Screwdriver', 'Wrench', 'Saw'];

  // Static method
  static String getTool(int index) => toolsList[index];
}