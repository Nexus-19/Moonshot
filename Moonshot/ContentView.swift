//
//  ContentView.swift
//  Moonshot
//
//  Created by Soumyattam Dey on 09/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts:[Astronaut]=Bundle.main.decode("astronauts.json")
    let missions:[Mission]=Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView{
               
            List(missions){ mission in
                NavigationLink(
                    destination: MissionView(mission: mission, astronauts: astronauts)){
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack(alignment:.leading){
                        Text(mission.displayName)
                        Text(mission.formattedLaunchDate)
                    }
                }
                
            }
            .navigationBarTitle("Moonshot")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
