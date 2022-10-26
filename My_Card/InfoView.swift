
import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    let color: UIColor
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 100)
            .fill(Color(color))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill", color: .blue)
            .previewLayout(.sizeThatFits)
    }
}
