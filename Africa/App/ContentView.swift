//
//  ContentView.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [AnimalModel] = Bundle.main.decodeAnimalData("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                SliderView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListView(animal: animal)
                }
            }//:List
            .navigationBarTitle("Africa", displayMode: .large)
        }//:NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
