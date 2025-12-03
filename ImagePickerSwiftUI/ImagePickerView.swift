import SwiftUI

struct ImagePickerView: View {
    @State var imgData = Data.init(count: 0)
    @State var shown = false
    var body: some View {
        VStack {
            SelectedImageView()
            SelectImageButton()
        }
        .animation(.spring(), value: shown)
    }
    
    @ViewBuilder
    func SelectedImageView() -> some View {
        if !imgData.isEmpty {
            Image(uiImage: UIImage(data: imgData)!)
                .resizable()
                .imageScale(.large)
        }
    }
    
    @ViewBuilder
    func SelectImageButton() -> some View {
        Button(action: imagePickerAnimation) {
            Text(Constants.imagePickerTitle)
                .selectImageModifier()
        }
        .sheet(isPresented: $shown) {
            PickerView(shown: $shown, imgData: $imgData)
        }
    }
    
    func imagePickerAnimation() {
        withAnimation(.spring) {
            shown.toggle()
        }
    }
}

#Preview {
    ImagePickerView()
        .preferredColorScheme(.dark)
}
