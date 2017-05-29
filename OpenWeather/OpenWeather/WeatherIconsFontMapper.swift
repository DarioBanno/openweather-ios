//
//  WeatherIconsFontMap.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

/// Font Map for Weather Icons
/// URL: https://erikflowers.github.io/weather-icons/
/// Original map: https://erikflowers.github.io/weather-icons/api-list.html
/// Official OWM api icons: http://openweathermap.org/weather-conditions

struct WeatherIconsFontMapper {

    static let charactersMap: [String:Character] = [
        
        "wi-owm-200": "\u{f01e}",
        "wi-owm-201": "\u{f01e}",
        "wi-owm-202": "\u{f01e}",
        "wi-owm-210": "\u{f016}",
        "wi-owm-211": "\u{f016}",
        "wi-owm-212": "\u{f016}",
        "wi-owm-221": "\u{f016}",
        "wi-owm-230": "\u{f01e}",
        "wi-owm-231": "\u{f01e}",
        "wi-owm-232": "\u{f01e}",
        "wi-owm-300": "\u{f01c}",
        "wi-owm-301": "\u{f01c}",
        "wi-owm-302": "\u{f019}",
        "wi-owm-310": "\u{f017}",
        "wi-owm-311": "\u{f019}",
        "wi-owm-312": "\u{f019}",
        "wi-owm-313": "\u{f01a}",
        "wi-owm-314": "\u{f019}",
        "wi-owm-321": "\u{f01c}",
        "wi-owm-500": "\u{f01c}",
        "wi-owm-501": "\u{f019}",
        "wi-owm-502": "\u{f019}",
        "wi-owm-503": "\u{f019}",
        "wi-owm-504": "\u{f019}",
        "wi-owm-511": "\u{f017}",
        "wi-owm-520": "\u{f01a}",
        "wi-owm-521": "\u{f01a}",
        "wi-owm-522": "\u{f01a}",
        "wi-owm-531": "\u{f01d}",
        "wi-owm-600": "\u{f01b}",
        "wi-owm-601": "\u{f01b}",
        "wi-owm-602": "\u{f0b5}",
        "wi-owm-611": "\u{f017}",
        "wi-owm-612": "\u{f017}",
        "wi-owm-615": "\u{f017}",
        "wi-owm-616": "\u{f017}",
        "wi-owm-620": "\u{f017}",
        "wi-owm-621": "\u{f01b}",
        "wi-owm-622": "\u{f01b}",
        "wi-owm-701": "\u{f01a}",
        "wi-owm-711": "\u{f062}",
        "wi-owm-721": "\u{f0b6}",
        "wi-owm-731": "\u{f063}",
        "wi-owm-741": "\u{f014}",
        "wi-owm-761": "\u{f063}",
        "wi-owm-762": "\u{f063}",
        "wi-owm-771": "\u{f011}",
        "wi-owm-781": "\u{f056}",
        "wi-owm-800": "\u{f00d}",
        "wi-owm-801": "\u{f011}",
        "wi-owm-802": "\u{f011}",
        "wi-owm-803": "\u{f012}",
        "wi-owm-804": "\u{f013}",
        "wi-owm-900": "\u{f056}",
        "wi-owm-901": "\u{f01d}",
        "wi-owm-902": "\u{f073}",
        "wi-owm-903": "\u{f076}",
        "wi-owm-904": "\u{f072}",
        "wi-owm-905": "\u{f021}",
        "wi-owm-906": "\u{f015}",
        "wi-owm-957": "\u{f050}",
        "wi-owm-day-200": "\u{f010}",
        "wi-owm-day-201": "\u{f010}",
        "wi-owm-day-202": "\u{f010}",
        "wi-owm-day-210": "\u{f005}",
        "wi-owm-day-211": "\u{f005}",
        "wi-owm-day-212": "\u{f005}",
        "wi-owm-day-221": "\u{f005}",
        "wi-owm-day-230": "\u{f010}",
        "wi-owm-day-231": "\u{f010}",
        "wi-owm-day-232": "\u{f010}",
        "wi-owm-day-300": "\u{f00b}",
        "wi-owm-day-301": "\u{f00b}",
        "wi-owm-day-302": "\u{f008}",
        "wi-owm-day-310": "\u{f008}",
        "wi-owm-day-311": "\u{f008}",
        "wi-owm-day-312": "\u{f008}",
        "wi-owm-day-313": "\u{f008}",
        "wi-owm-day-314": "\u{f008}",
        "wi-owm-day-321": "\u{f00b}",
        "wi-owm-day-500": "\u{f00b}",
        "wi-owm-day-501": "\u{f008}",
        "wi-owm-day-502": "\u{f008}",
        "wi-owm-day-503": "\u{f008}",
        "wi-owm-day-504": "\u{f008}",
        "wi-owm-day-511": "\u{f006}",
        "wi-owm-day-520": "\u{f009}",
        "wi-owm-day-521": "\u{f009}",
        "wi-owm-day-522": "\u{f009}",
        "wi-owm-day-531": "\u{f00e}",
        "wi-owm-day-600": "\u{f00a}",
        "wi-owm-day-601": "\u{f0b2}",
        "wi-owm-day-602": "\u{f00a}",
        "wi-owm-day-611": "\u{f006}",
        "wi-owm-day-612": "\u{f006}",
        "wi-owm-day-615": "\u{f006}",
        "wi-owm-day-616": "\u{f006}",
        "wi-owm-day-620": "\u{f006}",
        "wi-owm-day-621": "\u{f00a}",
        "wi-owm-day-622": "\u{f00a}",
        "wi-owm-day-701": "\u{f009}",
        "wi-owm-day-711": "\u{f062}",
        "wi-owm-day-721": "\u{f0b6}",
        "wi-owm-day-731": "\u{f063}",
        "wi-owm-day-741": "\u{f003}",
        "wi-owm-day-761": "\u{f063}",
        "wi-owm-day-762": "\u{f063}",
        "wi-owm-day-781": "\u{f056}",
        "wi-owm-day-800": "\u{f00d}",
        "wi-owm-day-801": "\u{f000}",
        "wi-owm-day-802": "\u{f000}",
        "wi-owm-day-803": "\u{f000}",
        "wi-owm-day-804": "\u{f00c}",
        "wi-owm-day-900": "\u{f056}",
        "wi-owm-day-902": "\u{f073}",
        "wi-owm-day-903": "\u{f076}",
        "wi-owm-day-904": "\u{f072}",
        "wi-owm-day-906": "\u{f004}",
        "wi-owm-day-957": "\u{f050}",
        "wi-owm-night-200": "\u{f02d}",
        "wi-owm-night-201": "\u{f02d}",
        "wi-owm-night-202": "\u{f02d}",
        "wi-owm-night-210": "\u{f025}",
        "wi-owm-night-211": "\u{f025}",
        "wi-owm-night-212": "\u{f025}",
        "wi-owm-night-221": "\u{f025}",
        "wi-owm-night-230": "\u{f02d}",
        "wi-owm-night-231": "\u{f02d}",
        "wi-owm-night-232": "\u{f02d}",
        "wi-owm-night-300": "\u{f02b}",
        "wi-owm-night-301": "\u{f02b}",
        "wi-owm-night-302": "\u{f028}",
        "wi-owm-night-310": "\u{f028}",
        "wi-owm-night-311": "\u{f028}",
        "wi-owm-night-312": "\u{f028}",
        "wi-owm-night-313": "\u{f028}",
        "wi-owm-night-314": "\u{f028}",
        "wi-owm-night-321": "\u{f02b}",
        "wi-owm-night-500": "\u{f02b}",
        "wi-owm-night-501": "\u{f028}",
        "wi-owm-night-502": "\u{f028}",
        "wi-owm-night-503": "\u{f028}",
        "wi-owm-night-504": "\u{f028}",
        "wi-owm-night-511": "\u{f026}",
        "wi-owm-night-520": "\u{f029}",
        "wi-owm-night-521": "\u{f029}",
        "wi-owm-night-522": "\u{f029}",
        "wi-owm-night-531": "\u{f02c}",
        "wi-owm-night-600": "\u{f02a}",
        "wi-owm-night-601": "\u{f0b4}",
        "wi-owm-night-602": "\u{f02a}",
        "wi-owm-night-611": "\u{f026}",
        "wi-owm-night-612": "\u{f026}",
        "wi-owm-night-615": "\u{f026}",
        "wi-owm-night-616": "\u{f026}",
        "wi-owm-night-620": "\u{f026}",
        "wi-owm-night-621": "\u{f02a}",
        "wi-owm-night-622": "\u{f02a}",
        "wi-owm-night-701": "\u{f029}",
        "wi-owm-night-711": "\u{f062}",
        "wi-owm-night-721": "\u{f0b6}",
        "wi-owm-night-731": "\u{f063}",
        "wi-owm-night-741": "\u{f04a}",
        "wi-owm-night-761": "\u{f063}",
        "wi-owm-night-762": "\u{f063}",
        "wi-owm-night-781": "\u{f056}",
        "wi-owm-night-800": "\u{f02e}",
        "wi-owm-night-801": "\u{f022}",
        "wi-owm-night-802": "\u{f022}",
        "wi-owm-night-803": "\u{f022}",
        "wi-owm-night-804": "\u{f086}",
        "wi-owm-night-900": "\u{f056}",
        "wi-owm-night-902": "\u{f073}",
        "wi-owm-night-903": "\u{f076}",
        "wi-owm-night-904": "\u{f072}",
        "wi-owm-night-906": "\u{f024}",
        "wi-owm-night-957": "\u{f050}"
        
    ]

    static func iconString(id: String, nightTime: Bool = false) -> String? {
        var idPrefix = "wi-owm"
        
        if nightTime {
            idPrefix += "-night"
        }
        
        guard let character = charactersMap["\(idPrefix)-\(id)"] else {
            return nil
        }
        return String(describing: character)
    }
    
}


/*
 
 Open Weather Map ids meaning
 
 wi-owm-200: thunderstorm
 wi-owm-201: thunderstorm
 wi-owm-202: thunderstorm
 wi-owm-210: lightning
 wi-owm-211: lightning
 wi-owm-212: lightning
 wi-owm-221: lightning
 wi-owm-230: thunderstorm
 wi-owm-231: thunderstorm
 wi-owm-232: thunderstorm
 wi-owm-300: sprinkle
 wi-owm-301: sprinkle
 wi-owm-302: rain
 wi-owm-310: rain-mix
 wi-owm-311: rain
 wi-owm-312: rain
 wi-owm-313: showers
 wi-owm-314: rain
 wi-owm-321: sprinkle
 wi-owm-500: sprinkle
 wi-owm-501: rain
 wi-owm-502: rain
 wi-owm-503: rain
 wi-owm-504: rain
 wi-owm-511: rain-mix
 wi-owm-520: showers
 wi-owm-521: showers
 wi-owm-522: showers
 wi-owm-531: storm-showers
 wi-owm-600: snow
 wi-owm-601: snow
 wi-owm-602: sleet
 wi-owm-611: rain-mix
 wi-owm-612: rain-mix
 wi-owm-615: rain-mix
 wi-owm-616: rain-mix
 wi-owm-620: rain-mix
 wi-owm-621: snow
 wi-owm-622: snow
 wi-owm-701: showers
 wi-owm-711: smoke
 wi-owm-721: day-haze
 wi-owm-731: dust
 wi-owm-741: fog
 wi-owm-761: dust
 wi-owm-762: dust
 wi-owm-771: cloudy-gusts
 wi-owm-781: tornado
 wi-owm-800: day-sunny
 wi-owm-801: cloudy-gusts
 wi-owm-802: cloudy-gusts
 wi-owm-803: cloudy-gusts
 wi-owm-804: cloudy
 wi-owm-900: tornado
 wi-owm-901: storm-showers
 wi-owm-902: hurricane
 wi-owm-903: snowflake-cold
 wi-owm-904: hot
 wi-owm-905: windy
 wi-owm-906: hail
 wi-owm-957: strong-wind
 wi-owm-day-200: day-thunderstorm
 wi-owm-day-201: day-thunderstorm
 wi-owm-day-202: day-thunderstorm
 wi-owm-day-210: day-lightning
 wi-owm-day-211: day-lightning
 wi-owm-day-212: day-lightning
 wi-owm-day-221: day-lightning
 wi-owm-day-230: day-thunderstorm
 wi-owm-day-231: day-thunderstorm
 wi-owm-day-232: day-thunderstorm
 wi-owm-day-300: day-sprinkle
 wi-owm-day-301: day-sprinkle
 wi-owm-day-302: day-rain
 wi-owm-day-310: day-rain
 wi-owm-day-311: day-rain
 wi-owm-day-312: day-rain
 wi-owm-day-313: day-rain
 wi-owm-day-314: day-rain
 wi-owm-day-321: day-sprinkle
 wi-owm-day-500: day-sprinkle
 wi-owm-day-501: day-rain
 wi-owm-day-502: day-rain
 wi-owm-day-503: day-rain
 wi-owm-day-504: day-rain
 wi-owm-day-511: day-rain-mix
 wi-owm-day-520: day-showers
 wi-owm-day-521: day-showers
 wi-owm-day-522: day-showers
 wi-owm-day-531: day-storm-showers
 wi-owm-day-600: day-snow
 wi-owm-day-601: day-sleet
 wi-owm-day-602: day-snow
 wi-owm-day-611: day-rain-mix
 wi-owm-day-612: day-rain-mix
 wi-owm-day-615: day-rain-mix
 wi-owm-day-616: day-rain-mix
 wi-owm-day-620: day-rain-mix
 wi-owm-day-621: day-snow
 wi-owm-day-622: day-snow
 wi-owm-day-701: day-showers
 wi-owm-day-711: smoke
 wi-owm-day-721: day-haze
 wi-owm-day-731: dust
 wi-owm-day-741: day-fog
 wi-owm-day-761: dust
 wi-owm-day-762: dust
 wi-owm-day-781: tornado
 wi-owm-day-800: day-sunny
 wi-owm-day-801: day-cloudy-gusts
 wi-owm-day-802: day-cloudy-gusts
 wi-owm-day-803: day-cloudy-gusts
 wi-owm-day-804: day-sunny-overcast
 wi-owm-day-900: tornado
 wi-owm-day-902: hurricane
 wi-owm-day-903: snowflake-cold
 wi-owm-day-904: hot
 wi-owm-day-906: day-hail
 wi-owm-day-957: strong-wind
 wi-owm-night-200: night-alt-thunderstorm
 wi-owm-night-201: night-alt-thunderstorm
 wi-owm-night-202: night-alt-thunderstorm
 wi-owm-night-210: night-alt-lightning
 wi-owm-night-211: night-alt-lightning
 wi-owm-night-212: night-alt-lightning
 wi-owm-night-221: night-alt-lightning
 wi-owm-night-230: night-alt-thunderstorm
 wi-owm-night-231: night-alt-thunderstorm
 wi-owm-night-232: night-alt-thunderstorm
 wi-owm-night-300: night-alt-sprinkle
 wi-owm-night-301: night-alt-sprinkle
 wi-owm-night-302: night-alt-rain
 wi-owm-night-310: night-alt-rain
 wi-owm-night-311: night-alt-rain
 wi-owm-night-312: night-alt-rain
 wi-owm-night-313: night-alt-rain
 wi-owm-night-314: night-alt-rain
 wi-owm-night-321: night-alt-sprinkle
 wi-owm-night-500: night-alt-sprinkle
 wi-owm-night-501: night-alt-rain
 wi-owm-night-502: night-alt-rain
 wi-owm-night-503: night-alt-rain
 wi-owm-night-504: night-alt-rain
 wi-owm-night-511: night-alt-rain-mix
 wi-owm-night-520: night-alt-showers
 wi-owm-night-521: night-alt-showers
 wi-owm-night-522: night-alt-showers
 wi-owm-night-531: night-alt-storm-showers
 wi-owm-night-600: night-alt-snow
 wi-owm-night-601: night-alt-sleet
 wi-owm-night-602: night-alt-snow
 wi-owm-night-611: night-alt-rain-mix
 wi-owm-night-612: night-alt-rain-mix
 wi-owm-night-615: night-alt-rain-mix
 wi-owm-night-616: night-alt-rain-mix
 wi-owm-night-620: night-alt-rain-mix
 wi-owm-night-621: night-alt-snow
 wi-owm-night-622: night-alt-snow
 wi-owm-night-701: night-alt-showers
 wi-owm-night-711: smoke
 wi-owm-night-721: day-haze
 wi-owm-night-731: dust
 wi-owm-night-741: night-fog
 wi-owm-night-761: dust
 wi-owm-night-762: dust
 wi-owm-night-781: tornado
 wi-owm-night-800: night-clear
 wi-owm-night-801: night-alt-cloudy-gusts
 wi-owm-night-802: night-alt-cloudy-gusts
 wi-owm-night-803: night-alt-cloudy-gusts
 wi-owm-night-804: night-alt-cloudy
 wi-owm-night-900: tornado
 wi-owm-night-902: hurricane
 wi-owm-night-903: snowflake-cold
 wi-owm-night-904: hot
 wi-owm-night-906: night-alt-hail
 wi-owm-night-957: strong-wind
 
 --
 
 From weather-icons.css
 
 .wi-owm-200:before {
 content: "\f01e";
 }
 .wi-owm-201:before {
 content: "\f01e";
 }
 .wi-owm-202:before {
 content: "\f01e";
 }
 .wi-owm-210:before {
 content: "\f016";
 }
 .wi-owm-211:before {
 content: "\f016";
 }
 .wi-owm-212:before {
 content: "\f016";
 }
 .wi-owm-221:before {
 content: "\f016";
 }
 .wi-owm-230:before {
 content: "\f01e";
 }
 .wi-owm-231:before {
 content: "\f01e";
 }
 .wi-owm-232:before {
 content: "\f01e";
 }
 .wi-owm-300:before {
 content: "\f01c";
 }
 .wi-owm-301:before {
 content: "\f01c";
 }
 .wi-owm-302:before {
 content: "\f019";
 }
 .wi-owm-310:before {
 content: "\f017";
 }
 .wi-owm-311:before {
 content: "\f019";
 }
 .wi-owm-312:before {
 content: "\f019";
 }
 .wi-owm-313:before {
 content: "\f01a";
 }
 .wi-owm-314:before {
 content: "\f019";
 }
 .wi-owm-321:before {
 content: "\f01c";
 }
 .wi-owm-500:before {
 content: "\f01c";
 }
 .wi-owm-501:before {
 content: "\f019";
 }
 .wi-owm-502:before {
 content: "\f019";
 }
 .wi-owm-503:before {
 content: "\f019";
 }
 .wi-owm-504:before {
 content: "\f019";
 }
 .wi-owm-511:before {
 content: "\f017";
 }
 .wi-owm-520:before {
 content: "\f01a";
 }
 .wi-owm-521:before {
 content: "\f01a";
 }
 .wi-owm-522:before {
 content: "\f01a";
 }
 .wi-owm-531:before {
 content: "\f01d";
 }
 .wi-owm-600:before {
 content: "\f01b";
 }
 .wi-owm-601:before {
 content: "\f01b";
 }
 .wi-owm-602:before {
 content: "\f0b5";
 }
 .wi-owm-611:before {
 content: "\f017";
 }
 .wi-owm-612:before {
 content: "\f017";
 }
 .wi-owm-615:before {
 content: "\f017";
 }
 .wi-owm-616:before {
 content: "\f017";
 }
 .wi-owm-620:before {
 content: "\f017";
 }
 .wi-owm-621:before {
 content: "\f01b";
 }
 .wi-owm-622:before {
 content: "\f01b";
 }
 .wi-owm-701:before {
 content: "\f01a";
 }
 .wi-owm-711:before {
 content: "\f062";
 }
 .wi-owm-721:before {
 content: "\f0b6";
 }
 .wi-owm-731:before {
 content: "\f063";
 }
 .wi-owm-741:before {
 content: "\f014";
 }
 .wi-owm-761:before {
 content: "\f063";
 }
 .wi-owm-762:before {
 content: "\f063";
 }
 .wi-owm-771:before {
 content: "\f011";
 }
 .wi-owm-781:before {
 content: "\f056";
 }
 .wi-owm-800:before {
 content: "\f00d";
 }
 .wi-owm-801:before {
 content: "\f011";
 }
 .wi-owm-802:before {
 content: "\f011";
 }
 .wi-owm-803:before {
 content: "\f012";
 }
 .wi-owm-804:before {
 content: "\f013";
 }
 .wi-owm-900:before {
 content: "\f056";
 }
 .wi-owm-901:before {
 content: "\f01d";
 }
 .wi-owm-902:before {
 content: "\f073";
 }
 .wi-owm-903:before {
 content: "\f076";
 }
 .wi-owm-904:before {
 content: "\f072";
 }
 .wi-owm-905:before {
 content: "\f021";
 }
 .wi-owm-906:before {
 content: "\f015";
 }
 .wi-owm-957:before {
 content: "\f050";
 }
 .wi-owm-day-200:before {
 content: "\f010";
 }
 .wi-owm-day-201:before {
 content: "\f010";
 }
 .wi-owm-day-202:before {
 content: "\f010";
 }
 .wi-owm-day-210:before {
 content: "\f005";
 }
 .wi-owm-day-211:before {
 content: "\f005";
 }
 .wi-owm-day-212:before {
 content: "\f005";
 }
 .wi-owm-day-221:before {
 content: "\f005";
 }
 .wi-owm-day-230:before {
 content: "\f010";
 }
 .wi-owm-day-231:before {
 content: "\f010";
 }
 .wi-owm-day-232:before {
 content: "\f010";
 }
 .wi-owm-day-300:before {
 content: "\f00b";
 }
 .wi-owm-day-301:before {
 content: "\f00b";
 }
 .wi-owm-day-302:before {
 content: "\f008";
 }
 .wi-owm-day-310:before {
 content: "\f008";
 }
 .wi-owm-day-311:before {
 content: "\f008";
 }
 .wi-owm-day-312:before {
 content: "\f008";
 }
 .wi-owm-day-313:before {
 content: "\f008";
 }
 .wi-owm-day-314:before {
 content: "\f008";
 }
 .wi-owm-day-321:before {
 content: "\f00b";
 }
 .wi-owm-day-500:before {
 content: "\f00b";
 }
 .wi-owm-day-501:before {
 content: "\f008";
 }
 .wi-owm-day-502:before {
 content: "\f008";
 }
 .wi-owm-day-503:before {
 content: "\f008";
 }
 .wi-owm-day-504:before {
 content: "\f008";
 }
 .wi-owm-day-511:before {
 content: "\f006";
 }
 .wi-owm-day-520:before {
 content: "\f009";
 }
 .wi-owm-day-521:before {
 content: "\f009";
 }
 .wi-owm-day-522:before {
 content: "\f009";
 }
 .wi-owm-day-531:before {
 content: "\f00e";
 }
 .wi-owm-day-600:before {
 content: "\f00a";
 }
 .wi-owm-day-601:before {
 content: "\f0b2";
 }
 .wi-owm-day-602:before {
 content: "\f00a";
 }
 .wi-owm-day-611:before {
 content: "\f006";
 }
 .wi-owm-day-612:before {
 content: "\f006";
 }
 .wi-owm-day-615:before {
 content: "\f006";
 }
 .wi-owm-day-616:before {
 content: "\f006";
 }
 .wi-owm-day-620:before {
 content: "\f006";
 }
 .wi-owm-day-621:before {
 content: "\f00a";
 }
 .wi-owm-day-622:before {
 content: "\f00a";
 }
 .wi-owm-day-701:before {
 content: "\f009";
 }
 .wi-owm-day-711:before {
 content: "\f062";
 }
 .wi-owm-day-721:before {
 content: "\f0b6";
 }
 .wi-owm-day-731:before {
 content: "\f063";
 }
 .wi-owm-day-741:before {
 content: "\f003";
 }
 .wi-owm-day-761:before {
 content: "\f063";
 }
 .wi-owm-day-762:before {
 content: "\f063";
 }
 .wi-owm-day-781:before {
 content: "\f056";
 }
 .wi-owm-day-800:before {
 content: "\f00d";
 }
 .wi-owm-day-801:before {
 content: "\f000";
 }
 .wi-owm-day-802:before {
 content: "\f000";
 }
 .wi-owm-day-803:before {
 content: "\f000";
 }
 .wi-owm-day-804:before {
 content: "\f00c";
 }
 .wi-owm-day-900:before {
 content: "\f056";
 }
 .wi-owm-day-902:before {
 content: "\f073";
 }
 .wi-owm-day-903:before {
 content: "\f076";
 }
 .wi-owm-day-904:before {
 content: "\f072";
 }
 .wi-owm-day-906:before {
 content: "\f004";
 }
 .wi-owm-day-957:before {
 content: "\f050";
 }
 .wi-owm-night-200:before {
 content: "\f02d";
 }
 .wi-owm-night-201:before {
 content: "\f02d";
 }
 .wi-owm-night-202:before {
 content: "\f02d";
 }
 .wi-owm-night-210:before {
 content: "\f025";
 }
 .wi-owm-night-211:before {
 content: "\f025";
 }
 .wi-owm-night-212:before {
 content: "\f025";
 }
 .wi-owm-night-221:before {
 content: "\f025";
 }
 .wi-owm-night-230:before {
 content: "\f02d";
 }
 .wi-owm-night-231:before {
 content: "\f02d";
 }
 .wi-owm-night-232:before {
 content: "\f02d";
 }
 .wi-owm-night-300:before {
 content: "\f02b";
 }
 .wi-owm-night-301:before {
 content: "\f02b";
 }
 .wi-owm-night-302:before {
 content: "\f028";
 }
 .wi-owm-night-310:before {
 content: "\f028";
 }
 .wi-owm-night-311:before {
 content: "\f028";
 }
 .wi-owm-night-312:before {
 content: "\f028";
 }
 .wi-owm-night-313:before {
 content: "\f028";
 }
 .wi-owm-night-314:before {
 content: "\f028";
 }
 .wi-owm-night-321:before {
 content: "\f02b";
 }
 .wi-owm-night-500:before {
 content: "\f02b";
 }
 .wi-owm-night-501:before {
 content: "\f028";
 }
 .wi-owm-night-502:before {
 content: "\f028";
 }
 .wi-owm-night-503:before {
 content: "\f028";
 }
 .wi-owm-night-504:before {
 content: "\f028";
 }
 .wi-owm-night-511:before {
 content: "\f026";
 }
 .wi-owm-night-520:before {
 content: "\f029";
 }
 .wi-owm-night-521:before {
 content: "\f029";
 }
 .wi-owm-night-522:before {
 content: "\f029";
 }
 .wi-owm-night-531:before {
 content: "\f02c";
 }
 .wi-owm-night-600:before {
 content: "\f02a";
 }
 .wi-owm-night-601:before {
 content: "\f0b4";
 }
 .wi-owm-night-602:before {
 content: "\f02a";
 }
 .wi-owm-night-611:before {
 content: "\f026";
 }
 .wi-owm-night-612:before {
 content: "\f026";
 }
 .wi-owm-night-615:before {
 content: "\f026";
 }
 .wi-owm-night-616:before {
 content: "\f026";
 }
 .wi-owm-night-620:before {
 content: "\f026";
 }
 .wi-owm-night-621:before {
 content: "\f02a";
 }
 .wi-owm-night-622:before {
 content: "\f02a";
 }
 .wi-owm-night-701:before {
 content: "\f029";
 }
 .wi-owm-night-711:before {
 content: "\f062";
 }
 .wi-owm-night-721:before {
 content: "\f0b6";
 }
 .wi-owm-night-731:before {
 content: "\f063";
 }
 .wi-owm-night-741:before {
 content: "\f04a";
 }
 .wi-owm-night-761:before {
 content: "\f063";
 }
 .wi-owm-night-762:before {
 content: "\f063";
 }
 .wi-owm-night-781:before {
 content: "\f056";
 }
 .wi-owm-night-800:before {
 content: "\f02e";
 }
 .wi-owm-night-801:before {
 content: "\f022";
 }
 .wi-owm-night-802:before {
 content: "\f022";
 }
 .wi-owm-night-803:before {
 content: "\f022";
 }
 .wi-owm-night-804:before {
 content: "\f086";
 }
 .wi-owm-night-900:before {
 content: "\f056";
 }
 .wi-owm-night-902:before {
 content: "\f073";
 }
 .wi-owm-night-903:before {
 content: "\f076";
 }
 .wi-owm-night-904:before {
 content: "\f072";
 }
 .wi-owm-night-906:before {
 content: "\f024";
 }
 .wi-owm-night-957:before {
 content: "\f050";
 }
 
 */
