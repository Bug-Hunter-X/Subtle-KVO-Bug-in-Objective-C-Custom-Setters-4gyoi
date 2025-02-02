In Objective-C, a subtle bug can occur when using KVO (Key-Value Observing) with custom setters. If a custom setter doesn't properly call [self willChangeValueForKey:] and [self didChangeValueForKey:] before and after modifying the observed property, KVO notifications won't be triggered correctly, leading to unexpected behavior in observers. This often manifests as observers not receiving updates even though the property value changes.  For example:

```objectivec
@property (nonatomic, strong) NSString *myString;

- (void)setMyString:(NSString *)newString {
    if (![newString isEqualToString:_myString]) {
        _myString = newString; //Missing KVO calls
    }
}
```

This code is incorrect because it omits the crucial KVO notifications. 