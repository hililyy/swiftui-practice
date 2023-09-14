//
//  DatePickerBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var selectedDate1: Date = Date()
    @State var selectedDate2: Date = Date()
    @State var selectedDate3: Date = Date()
    @State var selectedDate4: Date = Date()
    @State var selectedDate5: Date = Date()
    
    var currentDate: String {
        let current = Date()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr")
//        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대로 설정
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: current)
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                Text("현재시간: \(currentDate)")
                
                Divider()
                
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate1)
                        .accentColor(.red)
                        .datePickerStyle(.compact)
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate1))")
                }
                Divider()
                
                VStack {
                    DatePicker("달력", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate2))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("휠", selection: $selectedDate3)
                        .datePickerStyle(.wheel)
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate3))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.date])
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate4))")
                }
            }
            .padding()
        }
    }
    
    func dateToKR(selectedDate: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr")
//        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대로 설정
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: selectedDate)
    }
}

struct DatePickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBasic()
    }
}
