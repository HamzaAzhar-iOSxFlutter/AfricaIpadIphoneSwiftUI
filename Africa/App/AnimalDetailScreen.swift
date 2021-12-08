//
//  AnimalDetailScreen.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct AnimalDetailScreen: View {
    let animal: AnimalModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                self.buildHeaderImage()
                self.buildTitle()
                self.buildHeadline()
                self.buildGalleryWithHeader()
                self.buildFactsView()
                self.buildAnimalDescription()
            }//:VStack
        }//:ScrollView
        .navigationBarTitle("Learn about \(self.animal.name)", displayMode: .inline)
    }
}

//MARK: - Preview
struct AnimalDetailScreen_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decodeAnimalData("animals.json")
    static var previews: some View {
        AnimalDetailScreen(animal: animals[0])
    }
}

//MARK: - Building Views
extension AnimalDetailScreen {
    fileprivate func buildHeaderImage() -> some View {
        return(Image(self.animal.image) .resizable().scaledToFit())
    }
    
    fileprivate func buildTitle() -> some View {
        return(Text(animal.name.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.vertical, 8)
                .foregroundColor(.primary)
                .background(
                    Color.accentColor
                        .frame(height: 6)
                        .offset(y: 24)
                ))
    }
    
    fileprivate func buildHeadline() -> some View {
        return(Text(self.animal.headline)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.accentColor)
                .padding(.horizontal))
    }
    
    fileprivate func buildGalleryWithHeader() -> some View {
        return(Group {
            HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
            AnimalGalleryView(animal: self.animal)
        }
                .padding(.horizontal)
                .padding(.top, 5))
    }
    
    fileprivate func buildFactsView() -> some View {
        return(Group {
            HeadingView(headingImage: "questionmark.circle", headingTitle: "Did you know?")
            FactView(animal: animal)
        }
                .padding(.horizontal)
                .padding(.top, 5))
    }
    
    fileprivate func buildAnimalDescription() -> some View {
        return(Group {
            HeadingView(headingImage: "info.circle", headingTitle: "All about \(self.animal.name)")
            Text(self.animal.description)
                .multilineTextAlignment(.leading)
                .layoutPriority(1)
        }
                .padding(.horizontal)
                .padding(.top, 5))
    }
}
