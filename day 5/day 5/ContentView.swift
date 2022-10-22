//
//  ContentView.swift
//  day 5
//
//  Created by Zainab Alhumaidan on 10/22/22.
//

import SwiftUI

struct ContentView: View {
   @State var grname = [ "Blueberry","Strawberry","Banana","Popcorn","Cake",]
    @State var list = ""


    var body: some View { VStack{
      
        List(grname, id: \.self){name in
          HStack{
            Text(name)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
        
            
                Spacer()
            Image(name)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            
            
            
            
                
            }
        }
            Spacer()
        HStack{
            Button(action: { grname.append(list)
                
            }, label: {
                Image("plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100.0)
            })
            TextField("ur item", text: $list)
                .frame(width: 150, height:60)
            Button(action: {
                grname.remove(at: 0)
                
            }, label: {
                Image("minus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100.0)
            })
           
        
            Button(action: {
                grname.append( grname.randomElement() ??  "dary")

                
            }, label: {
                Image("info")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100.0)
                
            })
           
          
            
        }
           
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
