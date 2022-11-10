//
//  TodayView.swift
//  AppStoreClone
//
//  Created by 이윤오 on 2022/11/10.
//

import SwiftUI

struct TodayView: View {
    let dateformat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd MMMM"
        return formatter
    }()
    
    var body: some View {
        //        let date = Date()
        //        let dateformatter = DateFormatter()
        //        dateformatter.dateFormat = "EEEE dd MMMM"
        //        let stringDate = dateformatter.string(from: date)
        VStack(alignment: .leading) {
            HStack {
                Text(dateformat
                    .string(from: Date())
                    .uppercased()
                )
                .font(.headline)
                Spacer()
            }
            .frame(height: 40)
            
            HStack {
                Text("Today")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .frame(height: 30)
            
            Spacer()
        }
        .padding([.leading, .trailing], 20)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
