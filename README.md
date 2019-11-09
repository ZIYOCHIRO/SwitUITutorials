Apple SwiftUI Tutorials: https://developer.apple.com/tutorials/swiftui/

### Creating and combining Views
1. By default, SwiftUI view files declare two `struct`, the first struct conforms to the View protocol and describes the view's content and layout. The second struct declares a preview for that view.
2. `spacer` expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
3. `padding()` modifier method 
4. You can use a stack to return multiple views from a body property.
5. A modifier returns a view that applies a new behavior or visual change. You can chain multiple modifier to achieve the effects you need.
```Swift
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
1. `state` is a value, or a set of values, that can change over time, and that affects a view's behavior, content, or layout. You use a property with the `@state` attribute to add state to a view.
```Swift
struct LandmarkList: View {
    @State var showFavoritesOnly = false
    // ...snip
}
```
2. You use `$` prefix to access a binding to a `state` variable, or one of its properties. 
```Swift
Toogle(isOn: $showFavoritesOnly) {
    Text("Favorites only")
}
```
3. `Observable` obejct is a custom object for your data that can be cound to a view from storage in SwiftUI's environment. SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes.


