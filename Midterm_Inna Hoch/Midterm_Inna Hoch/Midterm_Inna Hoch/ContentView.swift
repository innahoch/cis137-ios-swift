//
//  ContentView.swift
//  Midterm_Inna Hoch
//  Created by Inna Hoch on 10/26/26.
//

import SwiftUI

let subjects = Bundle.main.decode([Subject].self, from: "Data.json")

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(subjects) { item in
                    NavigationLink(destination: DetailView(item: item)) {
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)

                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Inna's Cuisines")
        }
    }
}

struct DetailView: View {
    var item: Subject

    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)

            Text(item.name)
                .font(.title)

            Text(item.description)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
