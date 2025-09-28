//
//  HomeView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/25/25.
//

//
//  SaberView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/22/25.
//
import SwiftUI


struct HomeView: View {
    @State var name: String = ""
    @State var pw: String = ""
    var body: some View {
 
        VStack{
            HStack{
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment:.leading)
                    .padding()
            }
            TextField("",
                      text: $name)
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
            }
            .padding(.horizontal)
            Divider()
            TextField("Password",
                      text: $pw,
                      prompt: Text("Password").foregroundColor(.gray))
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
            }
            .padding(.horizontal)
            Button {
              print("do login action")
            } label: {
              Text("Login")
              .font(.title2)
              .bold()
              .foregroundColor(.white)
              .accessibilityLabel(Text("Login to your application"))
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(
               LinearGradient(colors: [.blue, .red],                   startPoint: .topLeading,                   endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
        }
    }
}
