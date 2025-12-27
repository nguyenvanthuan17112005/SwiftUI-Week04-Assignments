import SwiftUI
struct ComponentMenuView: View {

    var body: some View {
        List {
            Section("Text & Image") {
                NavigationLink("Text") { TextDemoView() }
                NavigationLink("Image") { ImageDemoView() }
            }

            Section("Inputs") {
                NavigationLink("TextField") { TextFieldDemoView() }
                NavigationLink("SecureField") { SecureFieldDemoView() }
                NavigationLink("Toggle") { ToggleDemoView() }
                NavigationLink("Slider") { SliderDemoView() }
                NavigationLink("Stepper") { StepperDemoView() }
                NavigationLink("Picker") { PickerDemoView() }
                NavigationLink("DatePicker") { DatePickerDemoView() }
            }

            Section("Controls") {
                NavigationLink("Button") { ButtonDemoView() }
                NavigationLink("ProgressView") { ProgressViewDemoView() }
            }

            Section("Layout") {
                NavigationLink("HStack") { HStackDemoView() }
                NavigationLink("VStack") { VStackDemoView() }
                NavigationLink("ZStack") { ZStackDemoView() }
                NavigationLink("Divider") {DividerDemoView()}
                NavigationLink("Spacer") {SpacerDemoView()}
            }

            Section("Navigation") {
                NavigationLink("Sheet") { SheetDemoView() }
                NavigationLink("Alert") { AlertDemoView() }
                NavigationLink("NavigationStackDemoView") { NavigationStackDemoView() }
            }
            Section("Misc"){
                NavigationLink("Group Box") { GroupBoxDemoView() }
                NavigationLink("Label") { LabelDemoView() }
                NavigationLink("Link") { LinkDemoView() }
                 
            }
        }
    }
}

