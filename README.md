Apple SwiftUI Tutorials: https://developer.apple.com/tutorials/swiftui/

### Creating and combining Views
1. By default, SwiftUI view files declare two `struct`, the first struct conforms to the View protocol and describes the view's content and layout. The second struct declares a preview for that view.
2. `spacer` expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
3. `padding()` modifier method 
4. You can use a stack to return multiple views from a body property.
5. A modifier returns a view that applies a new behavior or visual change. You can chain multiple modifier to achieve the effects you need.
```
     Text("Hello world!")
     .font(.title)
     .foregroundColor(.purple)
```

### Building Lists and Navigation

