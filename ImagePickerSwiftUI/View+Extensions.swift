import SwiftUI

extension View {
    func selectImageModifier() -> some View {
        self
            .fontWeight(.medium)
            .textScale(.secondary)
            .foregroundStyle(.white)
            .padding()
            .background(.red)
            .clipShape(.capsule)
    }
    
    func imageModifiers(_ constant: Constants) -> some View {
        self
            .aspectRatio(contentMode: .fill)
            .frame(height: constant.selectedImageHeight)
            .padding()
            .clipShape(RoundedRectangle(cornerRadius: constant.imageRadius))
    }
}
