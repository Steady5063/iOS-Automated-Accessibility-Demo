//
//  BlasterView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/22/25.
//

//
//  SaberView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/22/25.
//
import SwiftUI


struct BlasterView: View {
    
    private var darkGreen = Color(red: 0 / 255, green: 102 / 255, blue: 0 / 255)
    private var darkRed = Color(red: 220 / 255, green: 20 / 255, blue: 60 / 255)
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ScrollView {
            VStack {
                Text("Blasters for Sale")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment:.leading)
                    .padding()
                Text("This view includes all of the available blasters that you can purchase from a galaxy far far away.")
                    .padding()
                Section(header:
                        Text("Blasters for Sale"))
                {
                    VStack(alignment: .leading) {
                        Text("Han Solo Blaster")
                            .font(.headline)
                            .accessibilityAddTraits(.isHeader)
                        Image("Han")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170)
                        Text("Han Solo Blaster now 30% off!!")
                        Button(action: {
                            print("Your action function here")
                        }) {
                            Text("Add to Cart").font(.headline)
                        }
                        .accessibilityLabel("Sign Up for Newsletter")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.blue)
                                .shadow(color: .gray, radius: 1, x: 0, y: 2)
                        )
                        .foregroundColor(colorScheme == .dark ? Color.black : Color.black)
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(colorScheme == .dark ? Color.black : Color.white)
                            .shadow(color: .gray, radius: 5, x: 4, y: 4)
                    )
                    
                }
            }
            
        }
    }
}

struct BlasterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BlasterView()
        }
    }
}
