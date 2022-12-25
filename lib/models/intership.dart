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
        'Fruit Republic',
        'fruit_republic.png',
        true,
        'Бармен',
        'Алматы',
        '09:00-23:00',
        'Работа бармена в баре по приготовлению свежевыжатых соков',
        [
          'презентабельный внешний вид',
          'ответственность',
          'работоспособность',
          'приветливость',
          'НЕ ленивый (-ая)',
        ],
        [
          'суббота, воскресенье, праздничные дни',
          'иногда привлечение к работе в пятницу',
          'дорожные в конце дня'
        ],
        ['Education'],
      ),
      Internship(
        'LV Team',
        'nis.jpg',
        false,
        'CMM',
        'Elibaeva 2,\nAlmaty',
        '08:00-17:00',
        'Дарить добро всем',
        [
          'участие на проектах',
          'ответственность!',
        ],
        [
          'ВЧ',
          'Доступ к соц проектам!',
        ],
        ['Education'],
      ),
      Internship(
        'Jusan Mobile',
        'image.png',
        true,
        'Kotlin Developer',
        'Koktem-1, \nAlmaty',
        '13:00-17:00',
        'Internship for talented teens, contact 87777130178',
        [
          'Прохождение курсов Jusan',
          'Ответственность',
          'Анлгийский В2',
        ],
        [
          '15000 тг в месяц',
          'Официальная работа',
          'Курсы',
        ],
        ['Development'],
      ),
    ];
  }
}
