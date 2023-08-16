//
//  DetailView.swift
//  SuperHeroSwiftUI
//
//  Created by İbrahim Halid Bayrak on 16.08.2023.
//

import SwiftUI

struct DetailView: View {
    var selectedHero : SuperHero
    var body: some View {
            VStack {
                MapView(coordinate: selectedHero.coordinateLocation)
                    .frame(height: UIScreen.main.bounds.height * 0.3)
                    .edgesIgnoringSafeArea(.all)
                
                PrivateImageView(image: Image(selectedHero.imageName))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .offset(y: UIScreen.main.bounds.height * -0.25).padding(.bottom, UIScreen.main.bounds.height * -0.1)
                VStack {
                    HStack {
                        Text(selectedHero.name)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        Spacer()
                        Text(selectedHero.realName)
                            .font(.title)
                            .foregroundColor(.yellow)
                    }
                    HStack {
                        Text(selectedHero.city)
                        Spacer()
                        Text(selectedHero.job)
                    }
                }.padding()
                    .offset(y: UIScreen.main.bounds.height * -0.16)
                Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedHero: ironman)
    }
}

