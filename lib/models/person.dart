class Person {
  final String firstName;
  final String email;

  const Person(this.firstName, this.email);
}

final List<Person> persons = personList
    .map(
      (e) => Person(e["first_name"], e["email"]),
    )
    .toList();

final List<Map<String, Object>> personList = [
  {
    "id": 1,
    "first_name": "Gary",
    "last_name": "Ortiz",
    "email": "gortiz0@mapy.cz",
    "country": "Indonesia",
    "modified": "2015-05-16",
    "vip": false
  },
  {
    "id": 2,
    "first_name": "Albert",
    "last_name": "Williamson",
    "email": "awilliamson1@narod.ru",
    "country": "China",
    "modified": "2015-03-11",
    "vip": true
  },
  {
    "id": 3,
    "first_name": "Mildred",
    "last_name": "Fuller",
    "email": "mfuller2@npr.org",
    "country": "Peru",
    "modified": "2015-02-15",
    "vip": true
  },
  {
    "id": 4,
    "first_name": "Russell",
    "last_name": "Robinson",
    "email": "rrobinson3@google.pl",
    "country": "Belarus",
    "modified": "2014-10-31",
    "vip": false
  },
  {
    "id": 5,
    "first_name": "Laura",
    "last_name": "Harper",
    "email": "lharper4@boston.com",
    "country": "Philippines",
    "modified": "2015-01-14",
    "vip": false
  },
  {
    "id": 6,
    "first_name": "Larry",
    "last_name": "Sanders",
    "email": "lsanders5@cornell.edu",
    "country": "China",
    "modified": "2015-01-11",
    "vip": false
  },
  {
    "id": 7,
    "first_name": "Michael",
    "last_name": "Rice",
    "email": "mrice6@geocities.jp",
    "country": "Philippines",
    "modified": "2014-12-06",
    "vip": true
  },
  {
    "id": 8,
    "first_name": "Sara",
    "last_name": "Harris",
    "email": "sharris7@deliciousdays.com",
    "country": "Indonesia",
    "modified": "2014-11-05",
    "vip": true
  },
  {
    "id": 9,
    "first_name": "Phyllis",
    "last_name": "Webb",
    "email": "pwebb8@reddit.com",
    "country": "China",
    "modified": "2015-04-02",
    "vip": true
  },
  {
    "id": 10,
    "first_name": "Roger",
    "last_name": "Alvarez",
    "email": "ralvarez9@nsw.gov.au",
    "country": "Finland",
    "modified": "2015-03-21",
    "vip": true
  },
  {
    "id": 11,
    "first_name": "Maria",
    "last_name": "Carpenter",
    "email": "mcarpentera@so-net.ne.jp",
    "country": "Sweden",
    "modified": "2015-08-18",
    "vip": true
  },
  {
    "id": 12,
    "first_name": "Lori",
    "last_name": "Edwards",
    "email": "ledwardsb@storify.com",
    "country": "Russia",
    "modified": "2015-02-05",
    "vip": true
  },
  {
    "id": 13,
    "first_name": "Phillip",
    "last_name": "Mitchell",
    "email": "pmitchellc@ebay.co.uk",
    "country": "Russia",
    "modified": "2015-03-28",
    "vip": false
  },
  {
    "id": 14,
    "first_name": "Craig",
    "last_name": "Lopez",
    "email": "clopezd@hexun.com",
    "country": "Indonesia",
    "modified": "2015-01-20",
    "vip": true
  },
  {
    "id": 15,
    "first_name": "Marie",
    "last_name": "George",
    "email": "mgeorgee@squarespace.com",
    "country": "Mauritius",
    "modified": "2014-10-26",
    "vip": true
  },
  {
    "id": 16,
    "first_name": "Jean",
    "last_name": "Duncan",
    "email": "jduncanf@pbs.org",
    "country": "Norway",
    "modified": "2014-11-19",
    "vip": true
  },
  {
    "id": 17,
    "first_name": "Kimberly",
    "last_name": "Butler",
    "email": "kbutlerg@wix.com",
    "country": "Sweden",
    "modified": "2014-12-29",
    "vip": false
  },
  {
    "id": 18,
    "first_name": "Heather",
    "last_name": "Ramirez",
    "email": "hramirezh@instagram.com",
    "country": "Indonesia",
    "modified": "2015-07-13",
    "vip": false
  },
  {
    "id": 19,
    "first_name": "Jason",
    "last_name": "Sanders",
    "email": "jsandersi@earthlink.net",
    "country": "Canada",
    "modified": "2015-02-25",
    "vip": false
  },
  {
    "id": 20,
    "first_name": "Juan",
    "last_name": "Evans",
    "email": "jevansj@google.de",
    "country": "Philippines",
    "modified": "2015-07-09",
    "vip": true
  },
  {
    "id": 21,
    "first_name": "Billy",
    "last_name": "Tucker",
    "email": "btuckerk@businessweek.com",
    "country": "Indonesia",
    "modified": "2015-02-08",
    "vip": false
  },
  {
    "id": 22,
    "first_name": "Fred",
    "last_name": "Duncan",
    "email": "fduncanl@smugmug.com",
    "country": "Brazil",
    "modified": "2015-03-05",
    "vip": true
  },
  {
    "id": 23,
    "first_name": "Daniel",
    "last_name": "Peterson",
    "email": "dpetersonm@deliciousdays.com",
    "country": "Nigeria",
    "modified": "2014-10-08",
    "vip": false
  },
  {
    "id": 24,
    "first_name": "Kelly",
    "last_name": "Gilbert",
    "email": "kgilbertn@guardian.co.uk",
    "country": "Mexico",
    "modified": "2014-12-29",
    "vip": false
  },
  {
    "id": 25,
    "first_name": "Aaron",
    "last_name": "Hart",
    "email": "aharto@oakley.com",
    "country": "Russia",
    "modified": "2015-08-01",
    "vip": false
  },
  {
    "id": 26,
    "first_name": "Phillip",
    "last_name": "Cook",
    "email": "pcookp@i2i.jp",
    "country": "China",
    "modified": "2014-09-12",
    "vip": true
  },
  {
    "id": 27,
    "first_name": "Sara",
    "last_name": "Perry",
    "email": "sperryq@examiner.com",
    "country": "Czech Republic",
    "modified": "2015-02-15",
    "vip": false
  },
  {
    "id": 28,
    "first_name": "Karen",
    "last_name": "Fields",
    "email": "kfieldsr@home.pl",
    "country": "Iran",
    "modified": "2015-04-18",
    "vip": false
  },
  {
    "id": 29,
    "first_name": "Nancy",
    "last_name": "Schmidt",
    "email": "nschmidts@sogou.com",
    "country": "Venezuela",
    "modified": "2014-12-09",
    "vip": true
  },
  {
    "id": 30,
    "first_name": "Theresa",
    "last_name": "Chavez",
    "email": "tchavezt@smh.com.au",
    "country": "Czech Republic",
    "modified": "2015-01-07",
    "vip": true
  },
  {
    "id": 31,
    "first_name": "Howard",
    "last_name": "Crawford",
    "email": "hcrawfordu@list-manage.com",
    "country": "Brazil",
    "modified": "2015-03-17",
    "vip": false
  },
  {
    "id": 32,
    "first_name": "Catherine",
    "last_name": "Johnson",
    "email": "cjohnsonv@bandcamp.com",
    "country": "Canada",
    "modified": "2014-09-05",
    "vip": true
  },
  {
    "id": 33,
    "first_name": "Nicholas",
    "last_name": "Morales",
    "email": "nmoralesw@deviantart.com",
    "country": "Canada",
    "modified": "2015-04-01",
    "vip": false
  },
  {
    "id": 34,
    "first_name": "Chris",
    "last_name": "Morales",
    "email": "cmoralesx@ow.ly",
    "country": "China",
    "modified": "2015-03-05",
    "vip": true
  },
  {
    "id": 35,
    "first_name": "Mildred",
    "last_name": "Frazier",
    "email": "mfraziery@theglobeandmail.com",
    "country": "Pakistan",
    "modified": "2014-11-12",
    "vip": true
  },
  {
    "id": 36,
    "first_name": "Mark",
    "last_name": "Harper",
    "email": "mharperz@weebly.com",
    "country": "Botswana",
    "modified": "2015-05-31",
    "vip": false
  },
  {
    "id": 37,
    "first_name": "Michael",
    "last_name": "Ryan",
    "email": "mryan10@si.edu",
    "country": "South Africa",
    "modified": "2014-12-14",
    "vip": true
  },
  {
    "id": 38,
    "first_name": "Matthew",
    "last_name": "Ruiz",
    "email": "mruiz11@clickbank.net",
    "country": "Oman",
    "modified": "2015-06-19",
    "vip": true
  },
  {
    "id": 39,
    "first_name": "Jose",
    "last_name": "Morales",
    "email": "jmorales12@dedecms.com",
    "country": "Palestinian Territory",
    "modified": "2014-09-29",
    "vip": true
  },
  {
    "id": 40,
    "first_name": "Scott",
    "last_name": "Simpson",
    "email": "ssimpson13@weather.com",
    "country": "Ukraine",
    "modified": "2014-10-18",
    "vip": true
  },
  {
    "id": 41,
    "first_name": "Pamela",
    "last_name": "Welch",
    "email": "pwelch14@phpbb.com",
    "country": "Brazil",
    "modified": "2014-10-26",
    "vip": false
  },
  {
    "id": 42,
    "first_name": "Ruth",
    "last_name": "Mcdonald",
    "email": "rmcdonald15@discovery.com",
    "country": "Indonesia",
    "modified": "2015-04-18",
    "vip": false
  },
  {
    "id": 43,
    "first_name": "Kevin",
    "last_name": "Fields",
    "email": "kfields16@businesswire.com",
    "country": "Indonesia",
    "modified": "2014-09-10",
    "vip": true
  },
  {
    "id": 44,
    "first_name": "Justin",
    "last_name": "Kim",
    "email": "jkim17@xinhuanet.com",
    "country": "Finland",
    "modified": "2015-01-24",
    "vip": true
  },
  {
    "id": 45,
    "first_name": "Wanda",
    "last_name": "Jones",
    "email": "wjones18@jigsy.com",
    "country": "Philippines",
    "modified": "2014-08-23",
    "vip": true
  },
  {
    "id": 46,
    "first_name": "Jose",
    "last_name": "Carter",
    "email": "jcarter19@mlb.com",
    "country": "China",
    "modified": "2015-02-06",
    "vip": false
  },
  {
    "id": 47,
    "first_name": "Joe",
    "last_name": "Gonzales",
    "email": "jgonzales1a@google.ru",
    "country": "China",
    "modified": "2014-12-12",
    "vip": true
  },
  {
    "id": 48,
    "first_name": "Martin",
    "last_name": "Thompson",
    "email": "mthompson1b@acquirethisname.com",
    "country": "China",
    "modified": "2015-06-16",
    "vip": true
  },
  {
    "id": 49,
    "first_name": "Phillip",
    "last_name": "Hayes",
    "email": "phayes1c@alexa.com",
    "country": "Dominican Republic",
    "modified": "2015-01-03",
    "vip": true
  },
  {
    "id": 50,
    "first_name": "Angela",
    "last_name": "Shaw",
    "email": "ashaw1d@bigcartel.com",
    "country": "Malaysia",
    "modified": "2014-10-20",
    "vip": true
  }
];
