class Internship {
  late String company;
  late String logoURL;
  late bool isSaved;
  late String title;
  late String location;
  late String time;
  late String description;
  late List<String> requirements;
  late List<String> conditions;
  late List<String> spheres;
  Internship(
      this.company,
      this.logoURL,
      this.isSaved,
      this.title,
      this.location,
      this.time,
      this.description,
      this.requirements,
      this.conditions,
      this.spheres);
  static List<Internship> generateInternships() {
    return [
      Internship(
        'NIS',
        'nis.jpg',
        true,
        'Teacher',
        'Zhamakayev St 145,\nAlmaty',
        '08:00-15:00',
        'Description',
        [
          '1',
          '2',
          '3',
        ],
        [
          '1',
          '2',
        ],
        ['Education'],
      ),
      Internship(
        'NIS',
        'nis.jpg',
        false,
        'Teacher',
        'Elibaeva 2,\nAlmaty',
        '08:00-17:00',
        'Description',
        [
          '1',
          '2',
        ],
        [
          '1',
          '2',
        ],
        ['Education'],
      ),
      Internship(
        'Unknown',
        'image.png',
        true,
        'Hacker',
        'Unknown',
        'Full day',
        '[not found]',
        [
          '1',
          '2',
          '3',
          '4',
        ],
        [
          '1',
          '2',
          '3',
          '4',
        ],
        ['Development'],
      ),
    ];
  }
}
