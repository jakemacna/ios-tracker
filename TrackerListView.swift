import SwiftUI

struct Tracker: Identifiable {
    let id = UUID()
    var name: String
    var unit: String
    var progress: Double // 0.0 - 1.0
    var target: Double
    var current: Double
}

struct TrackerListView: View {
    @State private var trackers: [Tracker] = [
        Tracker(name: "Вода", unit: "мл", progress: 0.5, target: 2000, current: 1000),
        Tracker(name: "Калории", unit: "ккал", progress: 0.4, target: 2500, current: 1000),
        Tracker(name: "Бюджет", unit: "₽", progress: 0.3, target: 5000, current: 1500),
        Tracker(name: "Книга", unit: "стр.", progress: 0.6, target: 50, current: 30),
        Tracker(name: "Шаги", unit: "шагов", progress: 0.2, target: 10000, current: 2000)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(trackers) { tracker in
                    VStack(alignment: .leading) {
                        HStack {
                            Text(tracker.name)
                                .font(.headline)
                            Spacer()
                            Text("\(Int((tracker.progress * 100)))%")
                                .foregroundColor(.secondary)
                        }
                        ProgressView(value: tracker.progress)
                            .accentColor(.blue)
                        Text("\(Int(tracker.current)) / \(Int(tracker.target)) \(tracker.unit)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 8)
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)
                }
            }
            .navigationTitle("Мои трекеры")
        }
    }
}