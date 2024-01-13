//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Pawandeep Singh on 12/1/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    // systemImage String: refer to sf symbols
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            } // HStack
            
            Circle()
                .strokeBorder(lineWidth: 24 )
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button {
                    // action here
                } label: {
                    Image(systemName: "forward.fill")
                }
            } // HStack
            
        } // VStack
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
