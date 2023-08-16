//
//  ContentView.swift
//  SuperHeroSwiftUI
//
//  Created by İbrahim Halid Bayrak on 16.08.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(superHeroArray) { SuperHero in
                NavigationLink(destination: DetailView(selectedHero: SuperHero), label: {ListRowView(superHero: SuperHero)})
            }.navigationTitle(Text("Super Hero Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
