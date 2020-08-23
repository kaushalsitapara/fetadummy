import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

loadAsset() async {
  final data = await rootBundle.loadString('assets/datafiles/data.csv');
  List<List<dynamic>> datalist = const CsvToListConverter().convert(data);
  print(datalist);
}

void main() => loadAsset();
