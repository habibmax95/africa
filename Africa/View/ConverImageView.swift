//
//  ConverImageView.swift
//  Africa
//
//  Created by Office on 03/07/2021.
//

import SwiftUI

struct ConverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //:TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ConverImageView_Previews: PreviewProvider {
    static var previews: some View {
        ConverImageView()
    }
}
