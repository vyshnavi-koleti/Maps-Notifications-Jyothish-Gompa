//
//  ContentView.swift
//  Maps Notifications Jyothish Gompa
//
//  Created by Vyshnavi Koleti on 10/12/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var dreamSchool = false
    
    var body: some View {
        
        NavigationView {
            Map {
                Annotation("High School", coordinate: .vvs) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .foregroundStyle(.white)
                        Text("🚌")
                    }
                }
                
                Annotation("Undergrad School", coordinate: .iiitBhubaneswar) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .foregroundStyle(.white)
                        Text("🏫")
                        
                    }
                }
                
                Annotation("Graduate School", coordinate: .cuBoulder) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.orange)
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .foregroundStyle(.white)
                        Text("🎓")
                        
                    }
                }
                
                //Notifications coded in this location
                
                Annotation("Dream School", coordinate: .harvard) {
                    NavigationLink(destination: DreamSchoolView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                                .frame(width: 30, height: 30)
                                .padding(10)
                                .foregroundStyle(.white)
                            Text("💙")
                        }
                    }
                }
                    
            }
            .mapStyle(.imagery(elevation: .realistic))
        }
        
    }
    
}

extension CLLocationCoordinate2D {
    static let iiitBhubaneswar = CLLocationCoordinate2D(latitude: 20.2947, longitude: 85.7454)
    
    static let cuBoulder = CLLocationCoordinate2D(latitude: 40.0093, longitude: -105.2660)
    
    static let vvs = CLLocationCoordinate2D(latitude: 17.7619, longitude: 83.3427)
    
    static let harvard = CLLocationCoordinate2D(latitude: 42.3655, longitude: -71.1221)
}

#Preview {
    ContentView()
}
