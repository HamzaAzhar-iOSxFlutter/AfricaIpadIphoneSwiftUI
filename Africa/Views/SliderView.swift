//
//  SliderView.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import SwiftUI

struct SliderView: View {
    
    let sliderImages: [SliderModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(sliderImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
