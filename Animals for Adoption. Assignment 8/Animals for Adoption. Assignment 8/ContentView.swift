//
// Assignment #8
// I changed the original app into an animals for adoption.
// Rabbits opens a new view that lists rabbit types from the JSON file.
// Full Name: Inna Hoch
// Date: 10/23/26
//
import SwiftUI

let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

struct RabbitDetail: View {
    var body: some View {
        List {
            ForEach(menu) { section in
                if section.name == "Rabbits" {
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
        .navigationTitle("Rabbits")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("Cats")
                }

                HStack {
                    Text("Dogs")
                }

                NavigationLink(destination: RabbitDetail()) {
                    Text("Rabbits")
                }
            }
            .navigationTitle("Animals for Adoption")
        }
    }
}

#Preview {
    ContentView()
}
