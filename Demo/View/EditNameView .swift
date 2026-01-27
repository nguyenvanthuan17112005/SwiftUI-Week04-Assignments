import SwiftUI

struct EditNameView: View {
    
    @Binding var person: PersonData 
    
    var body: some View {
        Form {
            Section(header: Text("Thông tin cá nhân")) {
                
                TextField("Tên", text: $person.name)
                TextField("Họ", text: $person.surname)
                TextField("Số điện thoại", text: $person.phone)
                    .keyboardType(.phonePad)
            }
        }
        .navigationTitle("Chỉnh sửa")
    }
}


struct EditNameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditNameView(person: .constant(PersonData(name: "Thuận", surname: "Nguyễn Văn", phone: "0347945617")))
        }
    }
}
