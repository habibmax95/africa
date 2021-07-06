//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Office on 07/07/2021.
//

import SwiftUI

struct ExternalWebLinkView: View {
    var animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.com/"))!)
                }
            } //: HSTACK
        } //: BOX
        .foregroundColor(.accentColor)
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
    }
}
