import SwiftUI

struct ContentView: View {
    @State private var animateGradient = false
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    animateGradient ? Color(red: 135/255, green: 206/255, blue: 235/255)/*blue*/ :/**/ Color(red: 190/255, green: 228/255, blue: 208/255)/*green*/,
                    animateGradient ? Color(red: 198/255, green: 142/255, blue: 253/255)/*purple*/ : Color(red: 135/255, green: 206/255, blue: 235/255)/*blue*/
                    //Color.white.opacity(0.8)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.8)
            .ignoresSafeArea()
            .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: animateGradient)
            .onAppear {
                animateGradient.toggle()
            }
            
        }
        VStack{
            //Spacer()
            HStack(spacing: 40){
                //--------------Button1------------------------
                Button(action: {
                    // действие для первой кнопки
                    print("Button 1 tapped")
                }) {
                    VStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 29, height: 29)
                            .foregroundColor(.white)
                        Text("Стрiчка")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 6)
                }
                //--------------Button2------------------------
                Button(action: {
                    // действие для первой кнопки
                    print("Button 1 tapped")
                }) {
                    VStack{
                        Image("Doc")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                        Text("Документи")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 6)

                }
                //--------------Button3------------------------
                Button(action: {
                    // действие для первой кнопки
                    print("Button 1 tapped")
                }) {
                    VStack{
                        Image("bold")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
//                            .cornerRadius(5)
                        Text("Сервiси")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 6)

                }
                //--------------Button4------------------------
                Button(action: {
                    // действие для первой кнопки
                    print("Button 1 tapped")
                }) {
                    VStack{
                        Image("Man")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                        Text("Меню")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 6)

                
            }
            .padding(.horizontal, 5) // Отступы слева и справа для кнопок
            .padding(.top, 0)
            .padding(.bottom, 8)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
