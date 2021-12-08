//
//  AnimalGalleryView.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct AnimalGalleryView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(self.animal.gallery, id: \.self) { galleryItems in
                    Image(galleryItems)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }//:HStack
        }//:ScrollView
    }
}

struct AnimalGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decodeAnimalData("animals.json")
    static var previews: some View {
        AnimalGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
