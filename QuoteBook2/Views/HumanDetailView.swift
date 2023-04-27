//
//  HumanDetailView.swift
//  QuoteBook2
//
//  Created by Адам Табиев on 27.04.2023.
//

import SwiftUI

struct HumanDetailView: View {
    var human: Human
    
    var body: some View {
        ScrollView {
            Image(human.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(.orange, lineWidth: 4))
                .shadow(radius: 10)
                .padding()
            Text(human.name)
                .font(.title)
            Text(human.briefBio)
                .font(.subheadline)
            Divider()
            Text(human.biography ?? "")
                .font(.headline)
                .multilineTextAlignment(.center)
        }.padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))    }
}

struct HumanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HumanDetailView(human: .sampleForBio)
    }
}
