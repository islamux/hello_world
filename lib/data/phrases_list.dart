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
    PhraseModel(
      key: "goodbyeMyFriend",
      category: "Greetings",
      translations: translations["goodbyeMyFriend"]!,
    ),
    PhraseModel(
      key: "veryGood",
      category: "Opinion",
      translations: translations["veryGood"]!,
    ),
    PhraseModel(
      key: "wowYouSpeakChineseWell",
      category: "Compliments",
      translations: translations["wowYouSpeakChineseWell"]!,
    ),
    PhraseModel(
      key: "noProblem",
      category: "Politeness",
      translations: translations["noProblem"]!,
    ),
    PhraseModel(
      key: "helloEveryone",
      category: "Greetings",
      translations: translations["helloEveryone"]!,
    ),
    PhraseModel(
      key: "youAreWelcome",
      category: "Politeness",
      translations: translations["youAreWelcome"]!,
    ),
    PhraseModel(
      key: "whatDayIsToday",
      category: "Question",
      translations: translations["whatDayIsToday"]!,
    ),
    PhraseModel(
      key: "excellent",
      category: "Opinion",
      translations: translations["excellent"]!,
    ),
    PhraseModel(
      key: "notSoGood",
      category: "Opinion",
      translations: translations["notSoGood"]!,
    ),
    PhraseModel(
      key: "sorry",
      category: "Politeness",
      translations: translations["sorry"]!,
    ),
    PhraseModel(
      key: "youAreAmazing",
      category: "Compliments",
      translations: translations["youAreAmazing"]!,
    ),
    PhraseModel(
      key: "youAreFunny",
      category: "Compliments",
      translations: translations["youAreFunny"]!,
    ),
    PhraseModel(
      key: "iDontThinkSo",
      category: "Opinion",
      translations: translations["iDontThinkSo"]!,
    ),
    PhraseModel(
      key: "letsStart",
      category: "Action",
      translations: translations["letsStart"]!,
    ),
    PhraseModel(
      key: "thankYouContinue",
      category: "Politeness",
      translations: translations["thankYouContinue"]!,
    ),
    // Add more phrases here...
  ];
}
