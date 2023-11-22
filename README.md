# UniverseKit

Universe Design System 🎾


### Color
```
label.textColor = .orange100
```

### Shadow
```
public enum ShadowColorType {
    case black
    case gray
}

view.addShadow() // gray
view.addShadow(type: .black) // black
```

### Font
```
label.font = .regularFont(ofSize: 20)
label.font = .mediumFont(ofSize: 20)
label.font = .semiBoldFont(ofSize: 20)
label.font = .boldFont(ofSize: 20)
```

### Asset
```
image.image = Icon.icBall.image
```


### CustomButton
```
public enum CustomButtonType {
    case disabled
    case abled
    case ended
    case normal
}

public enum CustomButtonSize {
    case large
    case medium
    case small
}
```

```
private let button = CustomButton(title: "안녕하세요", type: .ended, size: .medium)

button.changeState(.normal)
```
