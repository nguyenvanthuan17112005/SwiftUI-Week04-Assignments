import SwiftUI

struct ComponentMenuView: View {

    var body: some View {
        NavigationStack {
            List {

                section(
                    title: "Text & Image",
                    items: [
                        ("Text", "textformat", AnyView(TextDemoView())),
                        ("Image", "photo", AnyView(ImageDemoView()))
                    ]
                )

                section(
                    title: "Inputs",
                    items: [
                        ("TextField", "rectangle.and.pencil.and.ellipsis", AnyView(TextFieldDemoView())),
                        ("SecureField", "lock", AnyView(SecureFieldDemoView())),
                        ("Toggle", "switch.2", AnyView(ToggleDemoView())),
                        ("Slider", "slider.horizontal.3", AnyView(SliderDemoView())),
                        ("Stepper", "plusminus", AnyView(StepperDemoView())),
                        ("Picker", "list.bullet", AnyView(PickerDemoView())),
                        ("DatePicker", "calendar", AnyView(DatePickerDemoView()))
                    ]
                )

                section(
                    title: "Controls",
                    items: [
                        ("Button", "cursorarrow.click", AnyView(ButtonDemoView())),
                        ("ProgressView", "hourglass", AnyView(ProgressViewDemoView()))
                    ]
                )

                section(
                    title: "Layout",
                    items: [
                        ("HStack", "square.split.1x2", AnyView(HStackDemoView())),
                        ("VStack", "square.split.2x1", AnyView(VStackDemoView())),
                        ("ZStack", "square.stack.3d.down.right", AnyView(ZStackDemoView())),
                        ("Divider", "minus", AnyView(DividerDemoView())),
                        ("Spacer", "arrow.left.and.right", AnyView(SpacerDemoView()))
                    ]
                )

                section(
                    title: "Containers",
                    items: [
                        ("Form", "list.bullet.rectangle.portrait", AnyView(FormDemoView())),
                        ("List", "list.bullet.rectangle", AnyView(ListDemoView())),
                        ("ScrollView", "arrow.up.and.down", AnyView(ScrollViewDemoView()))
                    ]
                )

                section(
                    title: "Navigation",
                    items: [
                        ("Sheet", "square.and.arrow.up", AnyView(SheetDemoView())),
                        ("Alert", "exclamationmark.triangle", AnyView(AlertDemoView())),
                        ("NavigationStack", "arrow.right", AnyView(NavigationStackDemoView()))
                    ]
                )

                section(
                    title: "Misc",
                    items: [
                        ("GroupBox", "square.stack", AnyView(GroupBoxDemoView())),
                        ("Label", "tag", AnyView(LabelDemoView())),
                        ("Link", "link", AnyView(LinkDemoView()))
                    ]
                )
            }
            .listStyle(.insetGrouped)
            .navigationTitle("UI Components")
            .tint(.blue)
        }
    }

    // MARK: - Section Builder
    @ViewBuilder
    private func section(
        title: String,
        items: [(String, String, AnyView)]
    ) -> some View {
        Section {
            ForEach(items, id: \.0) { item in
                NavigationLink {
                    item.2
                } label: {
                    Label(item.0, systemImage: item.1)
                        .font(.system(size: 16, weight: .medium))
                }
            }
        } header: {
            Text(title.uppercased())
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    ComponentMenuView()
}
