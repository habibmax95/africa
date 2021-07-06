//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Office on 04/07/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                //: HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //: TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //: HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //: GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryPreview(animal: animal)
                } //: GROUP 
                .padding(.horizontal)
                
                //: FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know? ")
                    InsetFactView(animal: animal)
                } //: GROUP
                .padding(.horizontal)
                
                //: DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                } //: GROUP
                .padding(.horizontal)
                
                //: DESCRIPTION
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                } //: GROUP
                .padding(.horizontal)
                
                
                //: LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn more")
                    
                    ExternalWebLinkView(animal: animal)
                } //: GROUP
                .padding(.horizontal)
                
                
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: SCROLL
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animals[0])
    }
}
