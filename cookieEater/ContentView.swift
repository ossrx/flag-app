import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var message = "Enjoy your cookie"
    @State private var resetDisabled = true
    @State private var eatDisabled = false
    @State private var msgColor = Color.accentColor
    var body: some View {
        VStack {
            Text("Cookies: \(counter)")
                .font(.largeTitle)
            HStack(spacing: 30) {
                Button{
                    print("Hi there!")
                    counter += 1
                    if counter >= 10 {
                        message = "Too many cookies"
                        msgColor = .green
                    }
                    if counter >= 20 {
                        message = "Bro take care!"
                        msgColor = .brown
                    }
                    if counter >= 30 {
                        message = "Check out!!"
                        msgColor = .orange
                    }
                    if counter >= 40 {
                        message = "Stop it..."
                        msgColor = .red
                        eatDisabled = true
                    }
                    if counter <= 30 {
                        resetDisabled = true
                    }
                    else {
                        resetDisabled = false
                    }
                }
            label:{
                
                Text("Clcik ME!")
                    .padding()
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
                    .shadow(color:.black.opacity(0.3),radius: 10)
            }
            .disabled(eatDisabled)
                
                if counter > 20 {
                    Button{
                        counter = 0
                        message = "Enjoy your cookie"
                        eatDisabled = false
                        resetDisabled = true
                    }
                label:
                    {
                        Text("Reset!")
                            .padding()
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(10)
                            .shadow(color:.black.opacity(0.3),radius: 10)
                    }
                    .disabled(resetDisabled)
                }
            }
                       Text("\(message)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(msgColor)
            
        }
    }
}
