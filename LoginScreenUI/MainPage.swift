//
//  MainPage.swift
//  LoginScreenUI
//
//  Created by ErRayn on 12.04.2023.
//

import SwiftUI

struct MainPage: View {
    
    @State private var searchText = ""
    @State private var description = ""
    @State private var title = ""
    
    var body: some View {
        VStack{
            NavigationStack{
                Text("\(searchText)")
                    .navigationTitle("Searchable Example")
            }
            .searchable(text: $searchText)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
