//
//  SampleAdventures.swift
//  MicroAdventures
//
//  Created by Tal Teri on 30/06/2026.
//

import Foundation

extension Adventure {
    // A pool of ready-made adventures used to seed the app.
    static let samples: [Adventure] = [
        Adventure(
            title: "Sunset at the Overlook",
            description: "Take a short stroll to the hilltop overlook and watch the sun dip below the skyline.",
            category: .outdoors,
            effortLevel: .easy,
            locationName: "Apple Park Overlook",
            latitude: 37.334_900,
            longitude: -122.009_020
        ),
        Adventure(
            title: "Hidden Café Hunt",
            description: "Find a café you've never tried and order whatever the barista recommends.",
            category: .food,
            effortLevel: .easy,
            locationName: "Cupertino Village",
            latitude: 37.331_400,
            longitude: -122.030_700
        ),
        Adventure(
            title: "Lakeside Paddle",
            description: "Rent a kayak and paddle a lap around the nearest lake before the afternoon wind picks up.",
            category: .water,
            effortLevel: .moderate,
            locationName: "Shoreline Lake",
            latitude: 37.401_600,
            longitude: -122.108_700
        ),
        Adventure(
            title: "Gallery Drop-In",
            description: "Spend twenty minutes in a small art gallery and pick your favourite piece.",
            category: .culture,
            effortLevel: .easy,
            locationName: "Palo Alto Art Center",
            latitude: 37.444_500,
            longitude: -122.163_300
        ),
        Adventure(
            title: "Stairway Skyline Climb",
            description: "Track down the city's longest public staircase and climb it for a rooftop-level view.",
            category: .urban,
            effortLevel: .challenging,
            locationName: "Sunnyvale Heights",
            latitude: 37.387_500,
            longitude: -122.057_700
        ),
        Adventure(
            title: "Wildflower Trail Loop",
            description: "Walk a gentle loop through the foothills and count how many wildflower colours you can spot.",
            category: .outdoors,
            effortLevel: .moderate,
            locationName: "Rancho San Antonio",
            latitude: 37.331_900,
            longitude: -122.087_400
        ),
        Adventure(
            title: "Night Market Tasting",
            description: "Graze your way through a street food market, sampling one dish from three different stalls.",
            category: .food,
            effortLevel: .easy,
            locationName: "San Jose Night Market",
            latitude: 37.335_500,
            longitude: -121.890_700
        ),
        Adventure(
            title: "Tide Pool探検",
            description: "Time low tide and explore the rocky shore for crabs, anemones, and starfish.",
            category: .water,
            effortLevel: .challenging,
            locationName: "Pillar Point Tide Pools",
            latitude: 37.495_900,
            longitude: -122.499_400
        ),
        Adventure(
            title: "Historic Downtown Walk",
            description: "Follow a self-guided history walk and read every plaque you pass along the way.",
            category: .culture,
            effortLevel: .easy,
            locationName: "Downtown Los Altos",
            latitude: 37.378_100,
            longitude: -122.114_300
        ),
        Adventure(
            title: "Rooftop Garden Quest",
            description: "Seek out a public rooftop garden and find the quietest bench to read a chapter.",
            category: .urban,
            effortLevel: .moderate,
            locationName: "Santana Row",
            latitude: 37.320_700,
            longitude: -121.948_500
        )
    ]
}
