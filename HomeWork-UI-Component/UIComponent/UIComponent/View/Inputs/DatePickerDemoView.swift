import SwiftUI

struct DatePickerDemoView: View{
    @State private var date = Date()
    var body: some View{
        VStack(spacing: 20){
            Text("Date picker Demo")
                .font(.title)
            DatePicker("Select date", selection: $date, displayedComponents: .date)
                .datePickerStyle(.graphical)
        }
        .padding()
    }
}
