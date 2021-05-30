import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kotxiposix_comunity/models/person.dart';

class PersonsContact extends StatefulWidget {
  @override
  _PeopleContactState createState() => _PeopleContactState();
}

class _PeopleContactState extends State<PersonsContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return WideLayout();
          } else {
            return NarrowLayout();
          }
        },
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Person _person;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PeopleList(
            onTapPeopleList: (person) {
              setState(() {
                _person = person;
              });
            },
          ),
          flex: 2,
        ),
        Expanded(
          child:
              _person == null ? Placeholder() : PersonDetail(person: _person),
          flex: 5,
        ),
      ],
    );
  }
}

class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PeopleList(onTapPeopleList: (person) {
      return Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: PersonDetail(
              person: person,
            ),
          );
        }),
      );
    });
  }
}

class PeopleList extends StatelessWidget {
  final void Function(Person) onTapPeopleList;

  const PeopleList({Key key, @required this.onTapPeopleList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var person in persons)
          ListTile(
            title: Text(person.name),
            subtitle: Text(person.email),
            onTap: () => onTapPeopleList(person),
          )
      ],
    );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;

  const PersonDetail({Key key, this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(person.name), Text(person.email)],
      ),
    );
  }
}
