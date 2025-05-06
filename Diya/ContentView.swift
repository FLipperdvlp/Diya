import SwiftUI

struct ContentView: View {
    @State private var selectedButtonIndex: Int? = nil
    @State private var animateGradient = false
    
    let defaultImages = ["icon", "Doc", "bold", "Man"]
    let activeImages = ["icon_active", "Doc_active", "bold_active", "Man_active"]
    let buttonTitles = ["Стрiчка", "Документи", "Сервiси", "Меню"]
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    animateGradient ? Color(red: 135/255, green: 206/255, blue: 235/255) : Color(red: 190/255, green: 228/255, blue: 208/255),
                    animateGradient ? Color(red: 198/255, green: 142/255, blue: 253/255) : Color(red: 135/255, green: 206/255, blue: 235/255)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.25))
                .frame(width: 325, height: 480)
                .overlay(
                    VStack(alignment: .leading, spacing: 12) {
                        Text("єДокумент")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top, 16)
                            .padding(.leading)

                        Spacer()
                    }
                        .padding(.top, 15)
                        .padding(.leading, -150)
                )
            .opacity(0.8)
            .ignoresSafeArea()
            .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: animateGradient)
            .onAppear {
                animateGradient.toggle()
            }
            
        }
        //Buttons
        VStack{
            //Spacer()
            HStack(spacing: 40){
                //--------------Button1------------------------
                Button(action: {
                    selectedButtonIndex = 0
                }) {
                    VStack{
                        Image(selectedButtonIndex == 0 ? activeImages[0] : defaultImages[0])
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
                    selectedButtonIndex = 1
                }) {
                    VStack{
                        Image(selectedButtonIndex == 1 ? activeImages[1] : defaultImages[1])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                        Text("Документи")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 6)

                }
                //--------------Button3------------------------
                Button(action: {
                    selectedButtonIndex = 2
                }) {
                    VStack{
                        Image(selectedButtonIndex == 2 ? activeImages[2] : defaultImages[2])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
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
                    selectedButtonIndex = 3
                }) {
                    VStack{
                        Image(selectedButtonIndex == 3 ? activeImages[3] : defaultImages[3])
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
