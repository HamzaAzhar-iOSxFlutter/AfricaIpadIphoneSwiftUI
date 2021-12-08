//
//  AnimalListView.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct AnimalListView: View {
    let animal: AnimalModel
    var body: some View {
        NavigationLink(destination: AnimalDetailScreen(animal: animal)) {
            HStack(alignment: .center, spacing: 16) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90, alignment: .center)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(animal.name)
                        .foregroundColor(.accentColor)
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text(animal.headline)
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                }//:VStack
            }//:HStack
        }
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decodeAnimalData("animals.json")
    static var previews: some View {
        AnimalListView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
