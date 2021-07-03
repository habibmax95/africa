//
//  ContentView.swift
//  Africa
//
//  Created by Office on 02/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                ConverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { item in
                    AnimalListItemView(animal: item)
                } //: LOOP
            } //: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
