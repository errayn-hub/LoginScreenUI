//
//  LoginView.swift
//  LoginScreenUI
//
//  Created by ErRayn on 8.04.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var showDetails = false
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image(systemName: "person").resizable().frame(width: 50, height: 50).cornerRadius(-12)
                Spacer().frame(height: 10)
                Text("FeedBack View")
                
                HStack{
                    ImageCard()
                    
                }.padding(90)
                
                
                
                Spacer()
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print("Show details for user")
                    }
                
                Button("FeedBack") {
                    showDetails.toggle()
                }

                .buttonStyle(.borderedProminent)
                .tint(.blue)
                
                if showDetails {
                    Text("erraynn3300@gmail.com")
                    Text("Sorun Ve Görüşlerinizi Bize Bildirin!")
                        .font(.title2)
                }
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
