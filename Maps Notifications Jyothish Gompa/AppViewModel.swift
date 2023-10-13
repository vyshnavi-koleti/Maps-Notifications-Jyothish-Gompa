//
//  AppViewModel.swift
//  Maps Notifications Jyothish Gompa
//
//  Created by Vyshnavi Koleti on 10/12/23.
//

import Foundation

class AppViewModel: ObservableObject {
    
    @Published var countries = [Country]()
    
    @MainActor
    func getAllCountries() async -> () {
        do {
            let url = URL(string: "https://restcountries.com/v3.1/all")!
            let (data, _) = try await URLSession.shared.data(from: url)
            countries = try JSONDecoder().decode([Country].self, from: data)
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    
    func clearCountries() {
        countries = []
    }
}
