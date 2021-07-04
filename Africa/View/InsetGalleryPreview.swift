//
//  InsetGalleryPreview.swift
//  Africa
//
//  Created by Office on 04/07/2021.
//

import SwiftUI

struct InsetGalleryPreview: View {
    var animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false)  {
            HStack (alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            } //: HSTACK
        } //: SCROLL
    }
}

struct InsetGalleryPreview_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryPreview(animal: animals[0])
    }
}
