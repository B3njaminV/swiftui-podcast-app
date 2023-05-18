import SwiftUI

struct NowPlayingView: View {
    
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color.black.opacity(0.2))
                .frame(width: UIScreen.main.bounds.size.width, height: 80)
            HStack{
                HStack {
                    Image("podcast")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .shadow(radius: 10, x: 0, y: 10)
                        .padding(.leading)
                    Text("Nadie Sabe Nada")
                        .padding(.leading, 10)
                    Spacer()
                }
                Spacer()
                HStack{
                    Button(action: {
                    }) {
                        Image(systemName: "play.fill")
                            .frame(width: 40, height: 40)
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                    }) {
                        Image(systemName: "goforward.30")
                            .frame(width: 60, height: 40)
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
            
            }
            
        }
    }
    
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
