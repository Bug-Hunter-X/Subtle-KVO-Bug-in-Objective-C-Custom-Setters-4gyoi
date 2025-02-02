# Objective-C KVO Bug: Missing KVO Notifications in Custom Setters

This repository demonstrates a common, yet subtle, bug in Objective-C related to Key-Value Observing (KVO) and custom setters.  When a custom setter doesn't properly call `willChangeValueForKey:` and `didChangeValueForKey:`, KVO notifications are not triggered, leading to observers not receiving updates.

The `bug.m` file shows the incorrect implementation, while `bugSolution.m` provides the corrected version.

## How to Reproduce
1. Clone this repository.
2. Open the project in Xcode.
3. Run the application. Observe the incorrect behavior in the original implementation and the correct behavior after applying the solution.