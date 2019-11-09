Apple SwiftUI Tutorials: https://developer.apple.com/tutorials/swiftui/

### Creating and combining Views
1. By default, SwiftUI view files declare two `struct`, the first struct conforms to the View protocol and describes the view's content and layout. The second struct declares a preview for that view.
2. `spacer` expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
3. `padding()` modifier method 
4. You can use a stack to return multiple views from a body property.
5. A modifier returns a view that applies a new behavior or visual change. You can chain multiple modifier to achieve the effects you need.
```SwiftUI
Text("Hello world!")
    .font(.title)
    .foregroundColor(.purple)
```

### Building Lists and Navigation
1. Use the previewLayout(_ :) modifer to set a size that approximates a row in a list
```Swift
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[1])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
```
2. To preivew in multiple devices, using:
```Swift

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
```
### Handing User Input
1. test
2.
