
# react-native-paint-board-library-obj-c

## Getting started

`$ npm install react-native-paint-board-library-obj-c --save`

### Mostly automatic installation

`$ react-native link react-native-paint-board-library-obj-c`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-paint-board-library-obj-c` and add `RNPaintBoardLibraryObjC.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaintBoardLibraryObjC.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPaintBoardLibraryObjCPackage;` to the imports at the top of the file
  - Add `new RNPaintBoardLibraryObjCPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-paint-board-library-obj-c'
  	project(':react-native-paint-board-library-obj-c').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-paint-board-library-obj-c/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-paint-board-library-obj-c')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPaintBoardLibraryObjC.sln` in `node_modules/react-native-paint-board-library-obj-c/windows/RNPaintBoardLibraryObjC.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Paint.Board.Library.Obj.C.RNPaintBoardLibraryObjC;` to the usings at the top of the file
  - Add `new RNPaintBoardLibraryObjCPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPaintBoardLibraryObjC from 'react-native-paint-board-library-obj-c';

// TODO: What to do with the module?
RNPaintBoardLibraryObjC;
```
  