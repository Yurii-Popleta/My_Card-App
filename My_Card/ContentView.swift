
import SwiftUI

struct ContentView: View {
    var body: some View {
        
            ZStack {
          
                Color("Color2")
                .edgesIgnoringSafeArea(.all)
               
                VStack() {
                
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170.0, height: 170.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color("Color1"), lineWidth: 5))
                    
                Text("My Card")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color("Color1"))
                   
                Text("IOS Developer")
                    .foregroundColor(Color("Color1"))
                    .font(.system(size: 25))
                     Divider()
                    
                    InfoView(text: "+ 380 63 674 5606", imageName: "phone.fill", color: .white)
                    InfoView(text: "Yurii@gmail.com", imageName: "envelope.fill", color: .white)
                  
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
     }
  }


