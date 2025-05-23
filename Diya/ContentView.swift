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
                .frame(width: 325, height: 500)
                .overlay(
                    ZStack{
                    VStack(spacing: 8) {
                        Text("єДокумент")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top, 25)
                            .padding(.leading, -145)
                        Spacer()
                        Image("MyPhoto")
                            .resizable()
                            .frame(width: 140, height: 195)
                            .padding(.top, -410)
                            .padding(.leading, -145)
                        //Spacer()
                        Text("Ренкас")
                            .font(.system(size: 27))
                            .foregroundColor(.black)
                            .padding(.leading, -145)
                            .padding(.top, -100)
                        Text("Глiб")
                            .font(.system(size: 27))
                            .foregroundColor(.black)
                            .padding(.leading, -145)
                            .padding(.top, -77)
                        Text("Сергiйович")
                            .font(.system(size: 27))
                            .foregroundColor(.black)
                            .padding(.leading, -145)
                            .padding(.top, -55)
                        MovingTextView(text: "Ой у лузі червона калина похилилася, чогось наша славна Україна зажурилася. А ми тую червону калину підіймемо, а ми нашу славну Україну, гей, гей, розвеселимо!Документ дiє пiд час воєнного стану.")
                            .frame(height: 20) // Тонкая строка
                            .padding(.leading, -145)
                            .padding(.top, -200)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [.green, .mint, .blue]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    }
                        VStack(alignment: .leading, spacing: 0){
                            Text("Дата")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .padding(.top, -171)
                                .padding(.leading, 55)
                            Text("народження:")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .padding(.top, -155)
                                .padding(.leading, 55)
                            Text("22.11.2006")
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                                .padding(.top, -125)
                                .padding(.leading, 55)
                            Text("РНОКПП:")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .padding(.top, -93)
                                .padding(.leading, 55)
                            Text("3977310633")
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                                .padding(.top, -67)
                                .padding(.leading, 55)
                        }
                        .padding(.leading)
                        .padding(.leading, 45)
                        Spacer()
                    }
                )
//            Image("MyPhoto")
//                .resizable()
//                .frame(width: 140, height: 195)
//                .padding(.top, -205)
//                .padding(.leading, -100)

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

struct MovingTextView: View{
    let text: String
    @State private var offset: CGFloat = 0
    let speed: Double = 30
    
    
    var body: some View {
        GeometryReader { geo in
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 14))
                .offset(x: offset)
                .onAppear {
                    let textWidth = geo.size.width * 2
                    withAnimation(Animation.linear(duration: 10).repeatForever(autoreverses: false)) {
                        offset = -textWidth
                    }
                }
        }
        .clipped()
    }
}

#Preview {
    ContentView()
}
//Created by a group of anonymous fans of the group fsociety :)
//Are you a one or are you a zero ?
