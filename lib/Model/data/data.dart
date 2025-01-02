import 'package:tugas_dua/Model/event_type_model.dart';
import 'package:tugas_dua/Model/events_model.dart';

List<EventTypeModel> getEventTypes() {
  return [
    EventTypeModel()
      ..imgAssetPath = "assets/event.png"
      ..eventType = "Event",
    EventTypeModel()
      ..imgAssetPath = "assets/merch.png"
      ..eventType = "Merchant",
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
