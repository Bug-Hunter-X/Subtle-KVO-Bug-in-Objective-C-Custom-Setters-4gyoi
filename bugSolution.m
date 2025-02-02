The solution involves correctly implementing KVO notifications within the custom setter:

```objectivec
@property (nonatomic, strong) NSString *myString;

- (void)setMyString:(NSString *)newString {
    if (![newString isEqualToString:_myString]) {
        [self willChangeValueForKey:@"myString"];
        _myString = newString;
        [self didChangeValueForKey:@"myString"];
    }
}
```

By adding `willChangeValueForKey:` and `didChangeValueForKey:`, we ensure that KVO observers are properly notified of changes to the `myString` property.