<div align="center">

# 🖼️ ImagePicker SwiftUI

**A SwiftUI photo-library picker that bridges UIKit's `UIImagePickerController` into SwiftUI.**

[![Platform](https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift)](https://developer.apple.com/xcode/swiftui/)
[![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode)](https://developer.apple.com/xcode/)
[![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/ImagePickerSwiftUI?style=flat-square&color=6E48AA)](https://github.com/ahmetbostanciklioglu/ImagePickerSwiftUI/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/ImagePickerSwiftUI?style=flat-square&color=4776E6)](https://github.com/ahmetbostanciklioglu/ImagePickerSwiftUI/commits)

</div>

## 📖 Overview

ImagePicker SwiftUI is a compact iOS sample that shows how to present the system photo library from a SwiftUI view. It wraps the UIKit `UIImagePickerController` in a `UIViewControllerRepresentable` and uses a `Coordinator` to bridge the UIKit delegate callbacks back into SwiftUI state. When an image is chosen it is stored as JPEG `Data` and rendered directly in the view.

## ✨ Features

- Presents the system photo library via `UIImagePickerController` wrapped in a `UIViewControllerRepresentable`.
- Bridges UIKit delegate callbacks to SwiftUI through a `Coordinator` and `@Binding` state.
- Returns the selected photo as JPEG `Data` (80% compression) and displays it inline.
- Sheet-based presentation with a spring animation and a reusable, capsule-styled "Select Image" button.
- Custom `View` extensions (`selectImageModifier`, `imageModifiers`) keep styling reusable and declarative.

## 📸 Preview

<div align="center">

<img width="1058" height="772" alt="Screenshot 2025-12-03 at 18 43 56" src="https://github.com/user-attachments/assets/0a57e28a-a97e-4126-8428-74529544e59e" />
<img width="1044" height="767" alt="Screenshot 2025-12-03 at 18 43 38" src="https://github.com/user-attachments/assets/9b9eafea-cc5f-4eea-859b-6a30daae6b62" />
<img width="1065" height="829" alt="Screenshot 2025-12-03 at 18 43 09" src="https://github.com/user-attachments/assets/9bb25348-7f0b-4c65-8e74-9e928f2295ec" />
<img width="1026" height="834" alt="Screenshot 2025-12-03 at 18 42 22" src="https://github.com/user-attachments/assets/c86dded6-8c3f-495a-9aec-08f653b40a38" />

</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/ImagePickerSwiftUI.git
cd ImagePickerSwiftUI
open ImagePickerSwiftUI.xcodeproj
```

Once the project is open in Xcode, select a simulator or device and press `Command + R` to build and run.

## 📋 Requirements

- iOS 26.1 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
