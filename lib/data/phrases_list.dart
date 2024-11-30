import 'package:hello_world/data/translation.dart';
import 'package:hello_world/model/phrase_model.dart';

class PhrasesList {
  static final List<PhraseModel> phrases = [
    PhraseModel(
      key: "greetingMorning",
      category: "Greetings",
      translations: translations["greetingMorning"]!,
    ),
    PhraseModel(
      key: "greetingEvening",
      category: "Greetings",
      translations: translations["greetingEvening"]!,
    ),
    PhraseModel(
      key: "hello",
      category: "Greetings",
      translations: translations["hello"]!,
    ),
    PhraseModel(
      key: "thankYou",
      category: "Politeness",
      translations: translations["thankYou"]!,
    ),
    // Add more phrases here...
  ];
}
