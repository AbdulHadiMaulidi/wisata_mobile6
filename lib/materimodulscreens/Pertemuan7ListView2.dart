import 'package:flutter/material.dart';

class Pertemuan7ListView2 extends StatelessWidget {
  const Pertemuan7ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemaun 7 List View'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'List View'),
              Tab(text: 'List View Builder'),
              Tab(text: 'List View Separated'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ContohListView(),
            ContohListViewBuilder(),
            ContohListViewSeparated()
          ],
        ),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
      ],
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(title: Text('Item $index'));
      },
    );
  }
}

class ContohListViewSeparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemBuilder: (context, index) {
        return ListTile(title: Text('Item $index'));
      },
    );
  }
}