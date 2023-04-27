//
//  HumanViewModel.swift
//  QuoteBook2
//
//  Created by Адам Табиев on 27.04.2023.
//

import Foundation

class HumanViewModel: ObservableObject {
    @Published var humans: [Human] = []
    
    init() {
        getData()
    }
    
    func getData() {
        let data = arrayWithAutors
    }
}
