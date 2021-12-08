//
//  FactView.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct FactView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id:\.self) { facts in
                    Text(facts)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct FactView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decodeAnimalData("animals.json")
    static var previews: some View {
        FactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
