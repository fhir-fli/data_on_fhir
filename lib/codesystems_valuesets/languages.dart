import 'package:fhir/r4.dart';

Coding? codingForLanguage(String display) {
  final index = languages.compose?.include[0].concept
      ?.indexWhere((element) => element.display == display);
  if (index == null || index == -1) {
    return null;
  } else {
    return Coding(
      code: languages.compose!.include[0].concept![index].code,
      display: display,
      system: FhirUri('urn:ietf:bcp:47'),
    );
  }
}

final languages = ValueSet.fromJson({
  "resourceType": "ValueSet",
  "id": "languages",
  "meta": {
    "lastUpdated": "2019-10-31T22:29:23.356+00:00",
    "profile": ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Common Languages</h2><div><p>This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)</p>\n</div><p>This value set includes codes from the following code systems:</p><ul><li>Include these codes as defined in <code>urn:ietf:bcp:47</code><table class=\"none\"><tr><td style=\"white-space:nowrap\"><b>Code</b></td><td><b>Display</b></td></tr><tr><td>ar</td><td>Arabic</td><td/></tr><tr><td>bn</td><td>Bengali</td><td/></tr><tr><td>cs</td><td>Czech</td><td/></tr><tr><td>da</td><td>Danish</td><td/></tr><tr><td>de</td><td>German</td><td/></tr><tr><td>de-AT</td><td>German (Austria)</td><td/></tr><tr><td>de-CH</td><td>German (Switzerland)</td><td/></tr><tr><td>de-DE</td><td>German (Germany)</td><td/></tr><tr><td>el</td><td>Greek</td><td/></tr><tr><td>en</td><td>English</td><td/></tr><tr><td>en-AU</td><td>English (Australia)</td><td/></tr><tr><td>en-CA</td><td>English (Canada)</td><td/></tr><tr><td>en-GB</td><td>English (Great Britain)</td><td/></tr><tr><td>en-IN</td><td>English (India)</td><td/></tr><tr><td>en-NZ</td><td>English (New Zeland)</td><td/></tr><tr><td>en-SG</td><td>English (Singapore)</td><td/></tr><tr><td>en-US</td><td>English (United States)</td><td/></tr><tr><td>es</td><td>Spanish</td><td/></tr><tr><td>es-AR</td><td>Spanish (Argentina)</td><td/></tr><tr><td>es-ES</td><td>Spanish (Spain)</td><td/></tr><tr><td>es-UY</td><td>Spanish (Uruguay)</td><td/></tr><tr><td>fi</td><td>Finnish</td><td/></tr><tr><td>fr</td><td>French</td><td/></tr><tr><td>fr-BE</td><td>French (Belgium)</td><td/></tr><tr><td>fr-CH</td><td>French (Switzerland)</td><td/></tr><tr><td>fr-FR</td><td>French (France)</td><td/></tr><tr><td>fy</td><td>Frysian</td><td/></tr><tr><td>fy-NL</td><td>Frysian (Netherlands)</td><td/></tr><tr><td>hi</td><td>Hindi</td><td/></tr><tr><td>hr</td><td>Croatian</td><td/></tr><tr><td>it</td><td>Italian</td><td/></tr><tr><td>it-CH</td><td>Italian (Switzerland)</td><td/></tr><tr><td>it-IT</td><td>Italian (Italy)</td><td/></tr><tr><td>ja</td><td>Japanese</td><td/></tr><tr><td>ko</td><td>Korean</td><td/></tr><tr><td>nl</td><td>Dutch</td><td/></tr><tr><td>nl-BE</td><td>Dutch (Belgium)</td><td/></tr><tr><td>nl-NL</td><td>Dutch (Netherlands)</td><td/></tr><tr><td>no</td><td>Norwegian</td><td/></tr><tr><td>no-NO</td><td>Norwegian (Norway)</td><td/></tr><tr><td>pa</td><td>Punjabi</td><td/></tr><tr><td>pl</td><td>Polish</td><td/></tr><tr><td>pt</td><td>Portuguese</td><td/></tr><tr><td>pt-BR</td><td>Portuguese (Brazil)</td><td/></tr><tr><td>ru</td><td>Russian</td><td/></tr><tr><td>ru-RU</td><td>Russian (Russia)</td><td/></tr><tr><td>sr</td><td>Serbian</td><td/></tr><tr><td>sr-RS</td><td>Serbian (Serbia)</td><td/></tr><tr><td>sv</td><td>Swedish</td><td/></tr><tr><td>sv-SE</td><td>Swedish (Sweden)</td><td/></tr><tr><td>te</td><td>Telegu</td><td/></tr><tr><td>zh</td><td>Chinese</td><td/></tr><tr><td>zh-CN</td><td>Chinese (China)</td><td/></tr><tr><td>zh-HK</td><td>Chinese (Hong Kong)</td><td/></tr><tr><td>zh-SG</td><td>Chinese (Singapore)</td><td/></tr><tr><td>zh-TW</td><td>Chinese (Taiwan)</td><td/></tr></table></li></ul><p><b>Additional Language Displays</b></p><table class=\"codes\"><tr><td><b>Code</b></td><td><b>Dansk (Danish, da)</b></td><td><b>Deutsch (German, de)</b></td><td><b>English (English, en)</b></td><td><b>Nederlands (Dutch, nl)</b></td><td><b>Polskie (Polish, pl)</b></td><td><b>Русский (Russian, ru)</b></td><td><b>中文 (Chinese, zh)</b></td></tr><tr><td>ar</td><td>Arabisk</td><td></td><td>Arabic</td><td>Arabisch</td><td></td><td></td><td></td></tr><tr><td>bn</td><td>Bengalsk</td><td>Bengalisch</td><td>Bengali</td><td>Bengaals</td><td></td><td>Бенгальский</td><td>孟加拉语</td></tr><tr><td>cs</td><td>Tjekkisk</td><td>Tschechisch</td><td>Czech</td><td>Tsjechisch</td><td></td><td>Чешский</td><td>捷克语</td></tr><tr><td>da</td><td>Dansk</td><td>Dänisch</td><td>Danish</td><td>Deens</td><td></td><td>Датский</td><td>丹麦语</td></tr><tr><td>de</td><td>Tysk</td><td>Deutsch</td><td>German</td><td>Duits</td><td></td><td>Немецкий</td><td>德语</td></tr><tr><td>de-AT</td><td>Tysk (Østrig</td><td>Deutsch (Österreich)</td><td>German (Austria)</td><td>Duits (Oostenrijk)</td><td></td><td>Немецкий (Австрия)</td><td>德语 （奥地利）</td></tr><tr><td>de-CH</td><td>Tysk (Schweiz)</td><td>Deutsch (Schweiz)</td><td>German (Switzerland)</td><td>Duits (Zwitserland)</td><td></td><td>Немецкий (Швейцария)</td><td>德语 （瑞士）</td></tr><tr><td>de-DE</td><td>Tysk (Tyskland)</td><td>Deutsch (Deutschland)</td><td>German (Germany)</td><td>Duits (Duitsland)</td><td></td><td>Немецкий (Германия)</td><td>德语 （德国）</td></tr><tr><td>el</td><td>Græsk</td><td>Griechisch</td><td>Greek</td><td>Grieks</td><td></td><td>Греческий</td><td>希腊语</td></tr><tr><td>en</td><td>Engelsk</td><td>Englisch</td><td>English</td><td>Engels</td><td></td><td>Английский</td><td>英语</td></tr><tr><td>en-AU</td><td>Engelsk (Australien)</td><td>Englisch (Australien)</td><td>English (Australia)</td><td>Engels (Australië)</td><td></td><td>Английский (Австралия)</td><td>英语 （澳大利亚）</td></tr><tr><td>en-CA</td><td>Engelsk (Canada)</td><td>Englisch (Kanada)</td><td>English (Canada)</td><td>Engels (Canada)</td><td></td><td>Английский (Канада)</td><td>英语 （加拿大）</td></tr><tr><td>en-GB</td><td>Engelsk (Storbritannien)</td><td>Englisch (Großbritannien)</td><td>English (Great Britain)</td><td>Engels (Groot Brittannië)</td><td></td><td>Английский (Великобритания)</td><td>英语 （英国）</td></tr><tr><td>en-IN</td><td>Engelsk (Indien)</td><td>Englisch (Indien)</td><td>English (India)</td><td>Engels (India)</td><td></td><td>Английский (Индия)</td><td>英语 （印度）</td></tr><tr><td>en-NZ</td><td>Engelsk (New Zeeland)</td><td>Englisch (Neuseeland)</td><td>English (New Zeland)</td><td>Engels (Nieuw Zeeland)</td><td></td><td>Английский (Новая Зеландия)</td><td>英语 （新西兰）</td></tr><tr><td>en-SG</td><td>Engelsk (Singapore)</td><td>Englisch (Singapur)</td><td>English (Singapore)</td><td>Engels (Singapore)</td><td></td><td>Английский (Сингапур)</td><td>英语 （新加坡）</td></tr><tr><td>en-US</td><td>Engelsk (Amerikansk)</td><td>Englisch (USA)</td><td>English (United States)</td><td>Engels (Verenigde Staten)</td><td></td><td>Английский (США)</td><td>英语 （美国）</td></tr><tr><td>es</td><td>Spansk</td><td>Spanisch</td><td>Spanish</td><td>Spaans</td><td></td><td>Испанский</td><td>西班牙语</td></tr><tr><td>es-AR</td><td>Spansk (Argentina)</td><td>Spanisch (Argentinien)</td><td>Spanish (Argentina)</td><td>Spaans (Argentinië)</td><td></td><td>Испанский (Аргентина)</td><td>西班牙语 （阿根廷）</td></tr><tr><td>es-ES</td><td>Spansk (Spanien)</td><td>Spanisch (Spanien)</td><td>Spanish (Spain)</td><td>Spaans (Spanje)</td><td></td><td>Испанский (Испания)</td><td>西班牙语 （西班牙）</td></tr><tr><td>es-UY</td><td>Spansk (Uruguay)</td><td>Spanisch (Uruguay)</td><td>Spanish (Uruguay)</td><td>Spaans (Uruguay)</td><td></td><td>Испанский (Уругвай)</td><td>西班牙语 （乌拉圭）</td></tr><tr><td>fi</td><td>Finsk</td><td>Finnisch</td><td>Finnish</td><td>Fins</td><td></td><td>Финский</td><td>芬兰语</td></tr><tr><td>fr</td><td>Fransk</td><td>Französisch</td><td>French</td><td>Frans</td><td></td><td>Французский</td><td>法语</td></tr><tr><td>fr-BE</td><td>Finsk (Belgien)</td><td>Französisch (Belgien)</td><td>French (Belgium)</td><td>Frans (België)</td><td></td><td></td><td></td></tr><tr><td>fr-CH</td><td>Fransk (Schweiz)</td><td>Französisch (Schweiz)</td><td>French (Switzerland)</td><td>Frans (Zwitserland)</td><td></td><td>Французский (Швейцария)</td><td>法语 （比利时）</td></tr><tr><td>fr-FR</td><td>Fransk (Frankrig)</td><td>Französisch (Frankreich)</td><td>French (France)</td><td>Frans (Frankrijk)</td><td></td><td>Французский (Франция)</td><td>法语 （瑞士）</td></tr><tr><td>fy</td><td>Frisisk</td><td>Friesisch</td><td>Frysian</td><td>Fries</td><td></td><td></td><td>弗里士兰语</td></tr><tr><td>fy-NL</td><td>Frisisk (Holland)</td><td>Friesisch (Niederlande)</td><td>Frysian (Netherlands)</td><td>Fries (Nederland)</td><td></td><td></td><td>弗里士兰语（荷兰）</td></tr><tr><td>hi</td><td>Hindi</td><td></td><td>Hindi</td><td>Hindi</td><td></td><td></td><td></td></tr><tr><td>hr</td><td>Kroatisk</td><td>Kroatisch</td><td>Croatian</td><td>Kroatisch</td><td></td><td>Хорватский</td><td>克罗地亚语</td></tr><tr><td>it</td><td>Italiensk</td><td>Italienisch</td><td>Italian</td><td>Italiaans</td><td></td><td>Итальянский</td><td>意大利语</td></tr><tr><td>it-CH</td><td>Italiensk (Schweiz)</td><td>Italienisch (Schweiz)</td><td>Italian (Switzerland)</td><td>Italiaans (Zwitserland)</td><td></td><td>Итальянский (Швейцария)</td><td>意大利语 （瑞士）</td></tr><tr><td>it-IT</td><td>Italiensk (Italien)</td><td>Italienisch (Italien)</td><td>Italian (Italy)</td><td>Italiaans (Italië)</td><td></td><td>Итальянский (Италия)</td><td>意大利语 （意大利）</td></tr><tr><td>ja</td><td>Japansk</td><td>Japanisch</td><td>Japanese</td><td>Japans</td><td></td><td>Японский</td><td>日语</td></tr><tr><td>ko</td><td>Koreansk</td><td>Koreanisch</td><td>Korean</td><td>Koreaans</td><td></td><td>Корейский</td><td>朝鲜语</td></tr><tr><td>nl</td><td>Hollandsk</td><td>Niederländisch</td><td>Dutch</td><td>Nederlands</td><td></td><td>Нидерландский</td><td>荷兰语</td></tr><tr><td>nl-BE</td><td>Hollandsk (Belgien)</td><td>Niederländisch (Belgien)</td><td>Dutch (Belgium)</td><td>Nederlands (België)</td><td></td><td></td><td>荷兰语 （比利时）</td></tr><tr><td>nl-NL</td><td>Hollandsk (Holland)</td><td>Niederländisch (Niederlande)</td><td>Dutch (Netherlands)</td><td>Nederlands (Nederland)</td><td></td><td>Нидерландский (Нидерланды)</td><td>荷兰语 （荷兰）</td></tr><tr><td>no</td><td>Norsk</td><td>Norwegisch</td><td>Norwegian</td><td>Noors</td><td></td><td>Норвежский</td><td>挪威语</td></tr><tr><td>no-NO</td><td>Norsk (Norge)</td><td>Norwegisch (Norwegen)</td><td>Norwegian (Norway)</td><td>Noors (Noorwegen)</td><td></td><td>Норвежский (Норвегия)</td><td>挪威语 （挪威）</td></tr><tr><td>pa</td><td>Punjabi</td><td></td><td>Punjabi</td><td>Punjabi</td><td></td><td></td><td></td></tr><tr><td>pl</td><td></td><td></td><td></td><td></td><td>Polskie</td><td></td><td></td></tr><tr><td>pt</td><td>Portugisisk</td><td>Portugiesisch</td><td>Portuguese</td><td>Portugees</td><td></td><td>Португальский</td><td>葡萄牙语</td></tr><tr><td>pt-BR</td><td>Portugisisk (Brasilien)</td><td>Portugiesisch (Brasilien)</td><td>Portuguese (Brazil)</td><td>Portugees (Brazilië)</td><td></td><td>Португальский (Бразилия)</td><td>葡萄牙语 （巴西）</td></tr><tr><td>ru</td><td>Russisk</td><td>Russisch</td><td>Russian</td><td>Russisch</td><td></td><td>Русский</td><td>俄语</td></tr><tr><td>ru-RU</td><td>Russisk (Rusland)</td><td>Russisch (Russland)</td><td>Russian (Russia)</td><td>Russisch (Rusland)</td><td></td><td>Русский (Россия)</td><td>俄语 （俄罗斯）</td></tr><tr><td>sr</td><td>Serbisk</td><td>Serbisch</td><td>Serbian</td><td>Servisch</td><td></td><td>Сербский</td><td>塞尔维亚语</td></tr><tr><td>sr-RS</td><td>Serbisk (Serbien)</td><td>Serbisch (Serbien)</td><td>Serbian (Serbia)</td><td>Servisch (Servië)</td><td></td><td>Сербский (Сербия)</td><td>塞尔维亚语 （塞尔维亚）</td></tr><tr><td>sv</td><td>Svensk</td><td>Schwedisch</td><td>Swedish</td><td>Zweeds</td><td></td><td>Шведский</td><td>瑞典语</td></tr><tr><td>sv-SE</td><td>Svensk (Sverige)</td><td>Schwedisch (Schweden)</td><td>Swedish (Sweden)</td><td>Zweeds (Zweden)</td><td></td><td>Шведский (Швеция)</td><td>瑞典语 （瑞典）</td></tr><tr><td>te</td><td>Telugu</td><td>Telugu</td><td>Telegu</td><td>Teloegoe</td><td></td><td>Телугу</td><td>泰卢固语</td></tr><tr><td>zh</td><td>Kinesisk</td><td>Chinesisch</td><td>Chinese</td><td>Chinees</td><td></td><td>Kитайский</td><td>中文</td></tr><tr><td>zh-CN</td><td>Kinesisk (Kina)</td><td>Chinesisch (China)</td><td>Chinese (China)</td><td>Chinees (China)</td><td></td><td>Kитайский (Китай)</td><td>中文 （中国）</td></tr><tr><td>zh-HK</td><td>Kinesisk (Hong Kong)</td><td>Chinesisch (Hong Kong)</td><td>Chinese (Hong Kong)</td><td>Chinees (Hong Kong)</td><td></td><td>Kитайский (Гонконг)</td><td>中文 （香港特别行政区）</td></tr><tr><td>zh-SG</td><td>Kinesisk (Singapore)</td><td>Chinesisch (Singapur)</td><td>Chinese (Singapore)</td><td>Chinees (Singapore)</td><td></td><td>Kитайский (Сингапур)</td><td>中文 （新加坡）</td></tr><tr><td>zh-TW</td><td>Kinesisk (Taiwan)</td><td>Chinesisch (Taiwan)</td><td>Chinese (Taiwan)</td><td>Chinees (Taiwan)</td><td></td><td>Kитайский (Тайвань)</td><td>中文 （台湾）</td></tr></table></div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "fhir"
    },
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode": "trial-use"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger": 3
    }
  ],
  "url": "http://hl7.org/fhir/ValueSet/languages",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.3.20"
    }
  ],
  "version": "4.0.1",
  "name": "CommonLanguages",
  "title": "Common Languages",
  "status": "draft",
  "experimental": true,
  "date": "2016-08-22T09:53:05+00:00",
  "publisher": "HL7 International - FHIR-Infrastructure",
  "contact": [
    {
      "telecom": [
        {"system": "url", "value": "http://hl7.org/fhir"}
      ]
    }
  ],
  "description":
      "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)",
  "compose": {
    "include": [
      {
        "system": "urn:ietf:bcp:47",
        "concept": [
          {
            "code": "ar",
            "display": "Arabic",
            "designation": [
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Arabisk"
              },
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Arabic"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Arabisch"
              }
            ]
          },
          {
            "code": "bn",
            "display": "Bengali",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Bengali"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Bengaals"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Бенгальский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "孟加拉语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Bengalisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Bengalsk"
              }
            ]
          },
          {
            "code": "cs",
            "display": "Czech",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Czech"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tsjechisch"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Чешский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "捷克语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tschechisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tjekkisk"
              }
            ]
          },
          {
            "code": "da",
            "display": "Danish",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Danish"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Deens"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Датский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "丹麦语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Dänisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Dansk"
              }
            ]
          },
          {
            "code": "de",
            "display": "German",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "German"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Duits"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Немецкий"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "德语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Deutsch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tysk"
              }
            ]
          },
          {
            "code": "de-AT",
            "display": "German (Austria)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "German (Austria)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Duits (Oostenrijk)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Немецкий (Австрия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "德语 （奥地利）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Deutsch (Österreich)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tysk (Østrig"
              }
            ]
          },
          {
            "code": "de-CH",
            "display": "German (Switzerland)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "German (Switzerland)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Duits (Zwitserland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Немецкий (Швейцария)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "德语 （瑞士）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Deutsch (Schweiz)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tysk (Schweiz)"
              }
            ]
          },
          {
            "code": "de-DE",
            "display": "German (Germany)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "German (Germany)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Duits (Duitsland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Немецкий (Германия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "德语 （德国）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Deutsch (Deutschland)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Tysk (Tyskland)"
              }
            ]
          },
          {
            "code": "el",
            "display": "Greek",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Greek"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Grieks"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Греческий"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "希腊语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Griechisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Græsk"
              }
            ]
          },
          {
            "code": "en",
            "display": "English",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk"
              }
            ]
          },
          {
            "code": "en-AU",
            "display": "English (Australia)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (Australia)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Australië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Австралия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （澳大利亚）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Australien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Australien)"
              }
            ]
          },
          {
            "code": "en-CA",
            "display": "English (Canada)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (Canada)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Canada)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Канада)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （加拿大）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Kanada)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Canada)"
              }
            ]
          },
          {
            "code": "en-GB",
            "display": "English (Great Britain)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (Great Britain)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Groot Brittannië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Великобритания)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （英国）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Großbritannien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Storbritannien)"
              }
            ]
          },
          {
            "code": "en-IN",
            "display": "English (India)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (India)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (India)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Индия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （印度）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Indien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Indien)"
              }
            ]
          },
          {
            "code": "en-NZ",
            "display": "English (New Zeland)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (New Zeland)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Nieuw Zeeland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Новая Зеландия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （新西兰）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Neuseeland)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (New Zeeland)"
              }
            ]
          },
          {
            "code": "en-SG",
            "display": "English (Singapore)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (Singapore)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Singapore)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (Сингапур)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （新加坡）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (Singapur)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Singapore)"
              }
            ]
          },
          {
            "code": "en-US",
            "display": "English (United States)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "English (United States)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engels (Verenigde Staten)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Английский (США)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "英语 （美国）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Englisch (USA)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Engelsk (Amerikansk)"
              }
            ]
          },
          {
            "code": "es",
            "display": "Spanish",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanish"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spaans"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Испанский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "西班牙语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spansk"
              }
            ]
          },
          {
            "code": "es-AR",
            "display": "Spanish (Argentina)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanish (Argentina)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spaans (Argentinië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Испанский (Аргентина)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "西班牙语 （阿根廷）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanisch (Argentinien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spansk (Argentina)"
              }
            ]
          },
          {
            "code": "es-ES",
            "display": "Spanish (Spain)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanish (Spain)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spaans (Spanje)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Испанский (Испания)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "西班牙语 （西班牙）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanisch (Spanien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spansk (Spanien)"
              }
            ]
          },
          {
            "code": "es-UY",
            "display": "Spanish (Uruguay)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanish (Uruguay)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spaans (Uruguay)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Испанский (Уругвай)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "西班牙语 （乌拉圭）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spanisch (Uruguay)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Spansk (Uruguay)"
              }
            ]
          },
          {
            "code": "fi",
            "display": "Finnish",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Finnish"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fins"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Финский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "芬兰语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Finnisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Finsk"
              }
            ]
          },
          {
            "code": "fr",
            "display": "French",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "French"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frans"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Французский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "法语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Französisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fransk"
              }
            ]
          },
          {
            "code": "fr-BE",
            "display": "French (Belgium)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "French (Belgium)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frans (België)"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Französisch (Belgien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Finsk (Belgien)"
              }
            ]
          },
          {
            "code": "fr-CH",
            "display": "French (Switzerland)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "French (Switzerland)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frans (Zwitserland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Французский (Швейцария)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "法语 （比利时）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Französisch (Schweiz)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fransk (Schweiz)"
              }
            ]
          },
          {
            "code": "fr-FR",
            "display": "French (France)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "French (France)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frans (Frankrijk)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Французский (Франция)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "法语 （瑞士）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Französisch (Frankreich)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fransk (Frankrig)"
              }
            ]
          },
          {
            "code": "fy",
            "display": "Frysian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frysian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fries"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "弗里士兰语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Friesisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frisisk"
              }
            ]
          },
          {
            "code": "fy-NL",
            "display": "Frysian (Netherlands)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frysian (Netherlands)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Fries (Nederland)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "弗里士兰语（荷兰）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Friesisch (Niederlande)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Frisisk (Holland)"
              }
            ]
          },
          {
            "code": "hi",
            "display": "Hindi",
            "designation": [
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hindi"
              },
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hindi"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hindi"
              }
            ]
          },
          {
            "code": "hr",
            "display": "Croatian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Croatian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kroatisch"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Хорватский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "克罗地亚语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kroatisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kroatisk"
              }
            ]
          },
          {
            "code": "it",
            "display": "Italian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiaans"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Итальянский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "意大利语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italienisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiensk"
              }
            ]
          },
          {
            "code": "it-CH",
            "display": "Italian (Switzerland)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italian (Switzerland)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiaans (Zwitserland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Итальянский (Швейцария)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "意大利语 （瑞士）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italienisch (Schweiz)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiensk (Schweiz)"
              }
            ]
          },
          {
            "code": "it-IT",
            "display": "Italian (Italy)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italian (Italy)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiaans (Italië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Итальянский (Италия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "意大利语 （意大利）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italienisch (Italien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Italiensk (Italien)"
              }
            ]
          },
          {
            "code": "ja",
            "display": "Japanese",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Japanese"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Japans"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Японский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "日语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Japanisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Japansk"
              }
            ]
          },
          {
            "code": "ko",
            "display": "Korean",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Korean"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Koreaans"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Корейский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "朝鲜语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Koreanisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Koreansk"
              }
            ]
          },
          {
            "code": "nl",
            "display": "Dutch",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Dutch"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Nederlands"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Нидерландский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "荷兰语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Niederländisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hollandsk"
              }
            ]
          },
          {
            "code": "nl-BE",
            "display": "Dutch (Belgium)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Dutch (Belgium)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Nederlands (België)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "荷兰语 （比利时）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Niederländisch (Belgien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hollandsk (Belgien)"
              }
            ]
          },
          {
            "code": "nl-NL",
            "display": "Dutch (Netherlands)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Dutch (Netherlands)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Nederlands (Nederland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Нидерландский (Нидерланды)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "荷兰语 （荷兰）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Niederländisch (Niederlande)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Hollandsk (Holland)"
              }
            ]
          },
          {
            "code": "no",
            "display": "Norwegian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norwegian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Noors"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Норвежский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "挪威语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norwegisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norsk"
              }
            ]
          },
          {
            "code": "no-NO",
            "display": "Norwegian (Norway)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norwegian (Norway)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Noors (Noorwegen)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Норвежский (Норвегия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "挪威语 （挪威）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norwegisch (Norwegen)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Norsk (Norge)"
              }
            ]
          },
          {
            "code": "pa",
            "display": "Punjabi",
            "designation": [
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Punjabi"
              },
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Punjabi"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Punjabi"
              }
            ]
          },
          {
            "code": "pl",
            "display": "Polish",
            "designation": [
              {
                "language": "pl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Polskie"
              }
            ]
          },
          {
            "code": "pt",
            "display": "Portuguese",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portuguese"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugees"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Португальский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "葡萄牙语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugiesisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugisisk"
              }
            ]
          },
          {
            "code": "pt-BR",
            "display": "Portuguese (Brazil)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portuguese (Brazil)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugees (Brazilië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Португальский (Бразилия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "葡萄牙语 （巴西）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugiesisch (Brasilien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Portugisisk (Brasilien)"
              }
            ]
          },
          {
            "code": "ru",
            "display": "Russian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisch"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Русский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "俄语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisk"
              }
            ]
          },
          {
            "code": "ru-RU",
            "display": "Russian (Russia)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russian (Russia)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisch (Rusland)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Русский (Россия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "俄语 （俄罗斯）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisch (Russland)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Russisk (Rusland)"
              }
            ]
          },
          {
            "code": "sr",
            "display": "Serbian",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbian"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Servisch"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Сербский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "塞尔维亚语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbisk"
              }
            ]
          },
          {
            "code": "sr-RS",
            "display": "Serbian (Serbia)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbian (Serbia)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Servisch (Servië)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Сербский (Сербия)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "塞尔维亚语 （塞尔维亚）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbisch (Serbien)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Serbisk (Serbien)"
              }
            ]
          },
          {
            "code": "sv",
            "display": "Swedish",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Swedish"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Zweeds"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Шведский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "瑞典语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Schwedisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Svensk"
              }
            ]
          },
          {
            "code": "sv-SE",
            "display": "Swedish (Sweden)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Swedish (Sweden)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Zweeds (Zweden)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Шведский (Швеция)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "瑞典语 （瑞典）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Schwedisch (Schweden)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Svensk (Sverige)"
              }
            ]
          },
          {
            "code": "te",
            "display": "Telegu",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Telegu"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Teloegoe"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Телугу"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "泰卢固语"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Telugu"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Telugu"
              }
            ]
          },
          {
            "code": "zh",
            "display": "Chinese",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinese"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinees"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kитайский"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "中文"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinesisch"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kinesisk"
              }
            ]
          },
          {
            "code": "zh-CN",
            "display": "Chinese (China)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinese (China)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinees (China)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kитайский (Китай)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "中文 （中国）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinesisch (China)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kinesisk (Kina)"
              }
            ]
          },
          {
            "code": "zh-HK",
            "display": "Chinese (Hong Kong)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinese (Hong Kong)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinees (Hong Kong)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kитайский (Гонконг)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "中文 （香港特别行政区）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinesisch (Hong Kong)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kinesisk (Hong Kong)"
              }
            ]
          },
          {
            "code": "zh-SG",
            "display": "Chinese (Singapore)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinese (Singapore)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinees (Singapore)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kитайский (Сингапур)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "中文 （新加坡）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinesisch (Singapur)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kinesisk (Singapore)"
              }
            ]
          },
          {
            "code": "zh-TW",
            "display": "Chinese (Taiwan)",
            "designation": [
              {
                "language": "en",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinese (Taiwan)"
              },
              {
                "language": "nl",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinees (Taiwan)"
              },
              {
                "language": "ru",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kитайский (Тайвань)"
              },
              {
                "language": "zh",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "中文 （台湾）"
              },
              {
                "language": "de",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Chinesisch (Taiwan)"
              },
              {
                "language": "da",
                "use": {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/designation-usage",
                  "code": "display"
                },
                "value": "Kinesisk (Taiwan)"
              }
            ]
          }
        ]
      }
    ]
  }
});
