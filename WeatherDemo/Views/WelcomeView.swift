import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack{
            VStack(spacing: 10){
                Image("logo")
                Text("Cuaca").bold().font(.title)
                Text("Cek cuaca dengan mudah").padding()
//                Button(action: {}) {
//                    Text("Lanjut")
//                }.tint(.green).buttonStyle(.borderedProminent).buttonBorderShape(.capsule)
                LocationButton(.shareCurrentLocation){
                    locationManager.requestLocation()
                }.cornerRadius(30).symbolVariant(.fill).foregroundColor(.white)
            }.multilineTextAlignment(.center).padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
