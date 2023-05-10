import SwiftUI

struct DetailView: View {
    
    var body: some View {
        NavigationStack {
            List {
                VStack(){
                    VStack(){
                        Image("podcast")
                            .imageScale(.large)
                            .foregroundColor(.white)
                            .background(.gray)
                        Text("Nadie Sabe Nada")
                            .font(.title3)
                            .bold()
                        HStack{
                            Image("podcast")
                                .frame(width: 40, height: 40)
                                .imageScale(.large)
                                .background(.gray)
                                .clipShape(Circle())
                            Text("SER Podcast")
                            Image(systemName: "chevron.right")
                        }
                        Button(action: {
                        }) {
                            HStack{
                                Image(systemName: "play")
                                    .frame(width: 40, height: 40)
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                Text("Dernier épisode")
                                    .foregroundColor(.black)
                            }
                                
                        }
                        .padding()
                        .background(.gray)
                        .clipShape(Capsule())
                        .buttonStyle(zoom())
                        .foregroundColor(.white)
                    }
                    
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing:
                HStack {
                    HStack{
                        Button(action: {
                        }) {
                            Image(systemName: "arrow.down")
                                .frame(width: 40, height: 40)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .background(.gray)
                                .clipShape(Circle())
                            
                        }
                        Button(action: {
                        }) {
                            Image(systemName: "ellipsis")
                                .frame(width: 40, height: 40)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .background(.gray)
                                .clipShape(Circle())
                        }
                    }
                }
                                
            )
            TabBar()
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct zoom: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            
    }
}
