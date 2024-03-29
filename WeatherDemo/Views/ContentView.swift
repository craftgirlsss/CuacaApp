//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Putra MacBook on 23/03/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack{
            
            if let location = locationManager.location{
                Text("Your coordinate are \(location.longitude),\(location.latitude)")
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView().environmentObject(locationManager)
                }
            }
            
            
        }.background(Color(hue:0.656,saturation: 0.768, brightness: 0.354)).preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
