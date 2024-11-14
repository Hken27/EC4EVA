// import 'package:tugas_dua/Model/date_model.dart';
// import 'package:tugas_dua/Model/event_type_model.dart';
// import 'package:tugas_dua/Model/events_model.dart';

// List<DateModel> getDates(){

//   List<DateModel> dates = new List<DateModel>();
//   DateModel dateModel = new DateModel();

//   //1
//   dateModel.date = "10";
//   dateModel.weekDay = "Sun";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "11";
//   dateModel.weekDay = "Mon";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "12";
//   dateModel.weekDay = "Tue";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "13";
//   dateModel.weekDay = "Wed";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "14";
//   dateModel.weekDay = "Thu";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "15";
//   dateModel.weekDay = "Fri";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   //1
//   dateModel.date = "16";
//   dateModel.weekDay = "Sat";
//   dates.add(dateModel);

//   dateModel = new DateModel();

//   return dates;

// }

// List<EventTypeModel> getEventTypes(){

//   List<EventTypeModel> events = new List();
//   EventTypeModel eventModel = new EventTypeModel();

//   //1
//   eventModel.imgAssetPath = "assets/concert.png";
//   eventModel.eventType = "Concert";
//   events.add(eventModel);

//   eventModel = new EventTypeModel();

//   //1
//   eventModel.imgAssetPath = "assets/sports.png";
//   eventModel.eventType = "Sports";
//   events.add(eventModel);

//   eventModel = new EventTypeModel();

//   //1
//   eventModel.imgAssetPath = "assets/education.png";
//   eventModel.eventType = "Education";
//   events.add(eventModel);

//   eventModel = new EventTypeModel();

//   return events;
// }

// List<EventsModel> getEvents(){

//   List<EventsModel> events = new List<EventsModel>();
//   EventsModel eventsModel = new EventsModel();

//   //1
//   eventsModel.imgeAssetPath = "assets/tileimg.png";
//   eventsModel.date = "Jan 12, 2019";
//   eventsModel.desc = "Sports Meet in Galaxy Field";
//   eventsModel.address = "Greenfields, Sector 42, Faridabad";
//   events.add(eventsModel);

//   eventsModel = new EventsModel();

//   //2
//   eventsModel.imgeAssetPath = "assets/second.png";
//   eventsModel.date = "Jan 12, 2019";
//   eventsModel.desc = "Art & Meet in Street Plaza";
//       eventsModel.address = "Galaxyfields, Sector 22, Faridabad";
//   events.add(eventsModel);

//   eventsModel = new EventsModel();

//   //3
//   eventsModel.imgeAssetPath = "assets/music_event.png";
//   eventsModel.date = "Jan 12, 2019";
//   eventsModel.address = "Galaxyfields, Sector 22, Faridabad";
//       eventsModel.desc = "Youth Music in Gwalior";
//   events.add(eventsModel);

//   eventsModel = new EventsModel();

//   return events;

// }

import 'package:tugas_dua/Model/event_type_model.dart';
import 'package:tugas_dua/Model/events_model.dart';

// List<DateModel> getDates() {
//   return [
//     DateModel()..date = "10"..weekDay = "Sun",
//     DateModel()..date = "11"..weekDay = "Mon",
//     DateModel()..date = "12"..weekDay = "Tue",
//     DateModel()..date = "13"..weekDay = "Wed",
//     DateModel()..date = "14"..weekDay = "Thu",
//     DateModel()..date = "15"..weekDay = "Fri",
//     DateModel()..date = "16"..weekDay = "Sat",
//   ];
// }

List<EventTypeModel> getEventTypes() {
  return [
    EventTypeModel()
      ..imgAssetPath = "assets/event.png"
      ..eventType = "Event",
    EventTypeModel()
      ..imgAssetPath = "assets/merch.png"
      ..eventType = "Merchant",
    // EventTypeModel()..imgAssetPath = "assets/education.png"..eventType = "Education",
  ];
}

List<EventsModel> getEvents() {
  return [
    EventsModel()
      ..imgeAssetPath = "assets/lm_2.jpg"
      ..date = "9 September 2024"
      ..desc = "A VERY BEAUTIFUL NIGHT. HOPEFULLY WE'LL MEET AGAIN"
      ..address = "GRAND MULIA SAKINAH, Pandaan",
    EventsModel()
      ..imgeAssetPath = "assets/wdf_1.jpg"
      ..date = "25 Februari 2024"
      ..desc = "THERE WILL BE NO END - LOVE THIS WAY FOREVER"
      ..address = "GRAND MULIA SAKINAH, Pandaan",
    EventsModel()
      ..imgeAssetPath = "assets/wdf_2.jpg"
      ..date = "21 Mei 2024"
      ..desc =
          "he truth is if you don't have a passion for what you are doing, your energy will eventually fizzle out."
      ..address = "GRAND MULIA SAKINAH, Pandaan",
    EventsModel()
      ..imgeAssetPath = "assets/lm_1.jpg"
      ..date = "8 April, 2023"
      ..desc =
          "Lovely Mess, You're so damn lovely. See u in another lovely mess."
      ..address = "Bukan Main Coffee, Pandaan",
  ];
}
