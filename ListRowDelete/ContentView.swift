//
//  ContentView.swift
//  ListRowDelete
//
//  Created by Trung Luu on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Vietnam", "Thailand", "Indonesia" , "Malaysia", "Phillipines", "Singapore", "Japan", "South Korea", "China", "USA", "Laos", "Cambodia"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.countries, id: \.self) { country in
                    Text(country)
                }.onDelete(perform: self.deleteItem)
            }.navigationBarTitle(
                "Countries",
                displayMode: .inline
            )
        }
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        self.countries.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
