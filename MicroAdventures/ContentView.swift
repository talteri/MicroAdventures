//
//  ContentView.swift
//  MicroAdventures
//
//  Created by Tal Teri on 30/06/2026.
//

import SwiftUI
import MapKit

// A category of micro adventure.
enum AdventureCategory: String, CaseIterable, Identifiable {
    case outdoors = "Outdoors"
    case food = "Food & Drink"
    case culture = "Culture"
    case water = "Water"
    case urban = "Urban"

    var id: Self { self }

    var systemImage: String {
        switch self {
        case .outdoors: "leaf"
        case .food: "fork.knife"
        case .culture: "building.columns"
        case .water: "water.waves"
        case .urban: "building.2"
        }
    }
}

// How much effort an adventure requires.
enum EffortLevel: String, CaseIterable, Identifiable {
    case easy = "Easy"
    case moderate = "Moderate"
    case challenging = "Challenging"

    var id: Self { self }

    var systemImage: String {
        switch self {
        case .easy: "figure.walk"
        case .moderate: "figure.hiking"
        case .challenging: "figure.climbing"
        }
    }
}

struct ContentView: View {
    // The location the map centers on.
    private let adventureCoordinate = CLLocationCoordinate2D(
        latitude: 37.334_900,
        longitude: -122.009_020
    )

    // Camera position centered on the adventure marker.
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900, longitude: -122.009_020),
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        )
    )

    // Active filters. Start with everything selected.
    @State private var selectedCategories: Set<AdventureCategory> = Set(AdventureCategory.allCases)
    @State private var selectedEffortLevels: Set<EffortLevel> = Set(EffortLevel.allCases)

    var body: some View {
        NavigationStack {
            Map(position: $cameraPosition) {
                Marker("Micro Adventure", coordinate: adventureCoordinate)
            }
            .ignoresSafeArea(edges: .bottom)
            .navigationTitle("Micro Adventures")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    filterMenu
                }
            }
        }
    }

    // Filter button with category and effort level sections.
    private var filterMenu: some View {
        Menu {
            Section("Categories") {
                Button("Select All Categories", systemImage: "checklist") {
                    selectedCategories = Set(AdventureCategory.allCases)
                }
                .disabled(selectedCategories.count == AdventureCategory.allCases.count)

                ForEach(AdventureCategory.allCases) { category in
                    Toggle(isOn: binding(for: category)) {
                        Label(category.rawValue, systemImage: category.systemImage)
                    }
                }
            }

            Section("Effort Level") {
                Button("Select All Effort Levels", systemImage: "checklist") {
                    selectedEffortLevels = Set(EffortLevel.allCases)
                }
                .disabled(selectedEffortLevels.count == EffortLevel.allCases.count)

                ForEach(EffortLevel.allCases) { level in
                    Toggle(isOn: binding(for: level)) {
                        Label(level.rawValue, systemImage: level.systemImage)
                    }
                }
            }
        } label: {
            Label("Filter", systemImage: "line.3.horizontal.decrease.circle")
        }
    }

    // Binding that adds or removes a category from the selection.
    private func binding(for category: AdventureCategory) -> Binding<Bool> {
        Binding(
            get: { selectedCategories.contains(category) },
            set: { isOn in
                if isOn {
                    selectedCategories.insert(category)
                } else {
                    selectedCategories.remove(category)
                }
            }
        )
    }

    // Binding that adds or removes an effort level from the selection.
    private func binding(for level: EffortLevel) -> Binding<Bool> {
        Binding(
            get: { selectedEffortLevels.contains(level) },
            set: { isOn in
                if isOn {
                    selectedEffortLevels.insert(level)
                } else {
                    selectedEffortLevels.remove(level)
                }
            }
        )
    }
}

#Preview {
    ContentView()
}
