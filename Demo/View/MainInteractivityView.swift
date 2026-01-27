import SwiftUI

struct MainInteractivityView: View {
    
    @State private var name = "Thuận"
    @State private var toggleState = false
    @State private var selectedColor = "White"
    @State private var person = PersonData(name: "Thuận", surname: "Nguyễn Văn", phone: "0347945617")
    
    let colors = ["Trắng", "Đỏ", "Xanh nước biển", "Xanh lá cây", "Đen"]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("Tương tác cơ bản")) {
                    TextField("Nhập tên:", text: $name)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Đổi tên thành Định") {
                        self.name = "Định"
                    }
                }
                
                
                Section(header: Text("Giao diện động")) {
                    Toggle("Trạng thái: \(toggleState ? "BẬT" : "TẮT")", isOn: $toggleState)
                    
                    Text("Dữ liệu lái giao diện (Data-driven UI)")
                        .fontWeight(toggleState ? .bold : .thin)
                        .foregroundColor(toggleState ? .blue : .primary)
                }
                
               
                Section(header: Text("Chọn màu sắc")) {
                    Picker("Màu hiện tại", selection: $selectedColor) {
                        ForEach(colors, id: \.self) { Text($0) }
                    }
                    Text("Bạn đã chọn: \(selectedColor)")
                }
                
                
                Section(header: Text("Hồ sơ người dùng")) {
                    NavigationLink(destination: EditNameView(person: $person)) {
                        VStack(alignment: .leading) {
                            Text("\(person.name) \(person.surname)")
                                .font(.headline)
                            Text("SĐT: \(person.phone)")
                                .font(.caption)
                        }
                    }
                }
            }
            .navigationTitle("SwiftUI Demo")
        }
    }
}

struct MainInteractivityView_Previews: PreviewProvider {
    static var previews: some View {
        MainInteractivityView()
    }
}
