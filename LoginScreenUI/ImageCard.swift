//
//  ImageCard.swift
//  LoginScreenUI
//
//  Created by ErRayn on 12.04.2023.
//

import SwiftUI

struct ImageCard: View {
    
    @State private var selection: String? = nil

    
    var body: some View {
        
                VStack(alignment: .leading, spacing: 16.0){
                    Image("Venus")
                        .resizable()
                        .frame(width: 280, height: 270)
                    cardText.padding(.horizontal, 8)
                }
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 24.0))
                .shadow(radius: 8)
            }
            
    var cardText: some View{
        VStack(alignment: .leading) {
            HStack(spacing: 4.0){
                Image(systemName: "v.square.fill")
                Text("Venus Cafe")
                    .font(.headline)
                    .frame(width: 100)
            }.padding()
            HStack(spacing: 4.0){
                
                NavigationLink(destination: MainPage(), tag: "A", selection: $selection) { EmptyView() }
                
                Button("Next"){
                    selection = "A"
                }
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding(.bottom,20)
            .padding(10)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageCard()
    }
}
