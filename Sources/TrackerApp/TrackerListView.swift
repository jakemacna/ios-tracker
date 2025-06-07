import SwiftUI

@available(iOS 13.0, *)
struct TrackerListView: View {
    var body: some View {
        NavigationView {
            Text("Hello, Tracker!")
                .navigationTitle("Tracker App")
        }
    }
}

@available(iOS 13.0, *)
struct TrackerListView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerListView()
    }
}
