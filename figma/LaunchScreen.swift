//
//  ContentView.swift
//  figma
//
//  Created by Александра Маслова on 01.04.2023.
//

import SwiftUI

struct ContentView: View {
       @State var show = false
        
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button {
                        self.clear()
                    } label: {
                        Text("clear")
                            .padding(.horizontal)
                            .foregroundColor(.white)
                    } //additional button to clear the screen for re-viewing

                }
            VStack(spacing: 10) {
                ZStack {
                    Ellipse1()
                        .opacity(show ? 0.9 : 0)
                        .animation(.easeIn(duration: 0.75))
                    Ellipse2()
                        .opacity(show ? 0.9 : 0)
                        .animation(.easeIn(duration: 1.5))
                    Ellipse3()
                        .opacity(show ? 0.9 : 0)
                        .animation(.easeIn(duration: 2.25))
                    Ellipse4()
                        .opacity(show ? 0.9 : 0)
                        .animation(.easeIn(duration: 3))
                    Ellipse5()
                        .opacity(show ? 0.9 : 0)
                        .animation(.easeIn(duration: 3.75))
                    HelloWorld()
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn(duration: 4))
                }
                
                Spacer()
                
                Button {
                    self.showMenu()
                } label: {
                    Text("start")
                        .foregroundColor(Color.white)
                        .fontWeight(.medium)
                        .font(.largeTitle)
                        .frame(width: 200, height: 70)
                        .background(Color.gray.opacity(0.4))
                        .cornerRadius(70)
                        .overlay(RoundedRectangle(cornerRadius: 70)
                            .stroke(Color.white, lineWidth: 3))
                        
                    
                }.padding(.bottom)
                    
            }
        }
        }
        
    }
    func showMenu()   {
        withAnimation {
            show = true
        }
    }
    
    func clear() {
        show = false
    }
}

struct Ellipse1: View {
    var body: some View {
        ZStack {
            Ellipse()
                .fill(Color.white)
            Ellipse()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.99, green: 0.09, blue: 0.09), Color(red: 0.81, green: 0.99, blue: 0.09, opacity: 0)]), startPoint: .top, endPoint: .bottom))
        }.offset(x: -110, y: 180)
         .frame(width: 70, height: 70)
        
    }
}

struct Ellipse2: View {
    var body: some View {
        ZStack {
            Ellipse()
                .fill(Color.white)
            Ellipse()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.04, green: 0.81, blue: 0.98), Color(red: 0.68, green: 0.04, blue: 0.98, opacity: 0.51)]), startPoint: .top, endPoint: .bottom))
        }.offset(x: -65, y: 100)
         .frame(width: 195, height: 190)
        
    }
}

struct Ellipse3: View {
    var body: some View {
        ZStack {
            Ellipse()
                .fill(Color.white)
            Ellipse()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.46, green: 0.04, blue: 0.99, opacity: 0.53), Color(red: 0.79, green: 0.40, blue: 0.40, opacity: 0.49), Color(red: 1, green: 0.62, blue: 0.05, opacity: 0.47)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(90))
        }
        .offset(x: 60, y: 60)
        .frame(width: 130, height: 130)
        
    }
}

struct Ellipse4: View {
    var body: some View {
        ZStack {
            Ellipse()
                .fill(Color.white)
            Ellipse()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.06, green: 0, blue: 0.5, opacity: 0.73), Color(red: 0.18, green: 0.05, blue: 0.96, opacity: 0.09)]), startPoint: .top, endPoint: .bottom)).rotationEffect(.degrees(-50))
        }.offset(x: -40, y: 210)
         .frame(width: 120, height: 120)
        
    }
}

struct Ellipse5: View {
    var body: some View {
        ZStack {
            Ellipse()
                .fill(Color.white)
            Ellipse()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 0, blue: 0.5, opacity: 0.87), Color(red: 0.86, green: 0, blue: 1, opacity: 0)]), startPoint: .top, endPoint: .bottom))
        }.offset(x: 85, y: 160)
         .frame(width: 200, height: 200)
    }
}

struct HelloWorld: View {
    var body: some View {
        Text("hello  world")
            .foregroundColor(Color.white)
            .fontWeight(.medium)
            .font(.largeTitle)
            .offset(x: 0, y: 125)
    }
}


struct LaunchScreen: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
