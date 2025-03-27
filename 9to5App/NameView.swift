//
//  NameView.swift
//  9to5App
//
//  Created by Mirabella on 26/03/25.
//

import SwiftUI

struct NameView: View {
    @State private var textField: String = ""
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            VStack {
                Text("Hi, What's Your Name?")
            }
            VStack {
                TextField("Enter Text", text: $textField)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("Welcome Aboard \(textField)!")
                    .padding()
            }
            .padding(.bottom, 150)
            Button(action: {

            }) {
                Text("Continue")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 2)
            )}
        }
        Spacer()
    }
}

#Preview {
    NameView()
}
