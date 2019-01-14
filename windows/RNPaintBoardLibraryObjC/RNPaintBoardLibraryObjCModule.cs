using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Paint.Board.Library.Obj.C.RNPaintBoardLibraryObjC
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPaintBoardLibraryObjCModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPaintBoardLibraryObjCModule"/>.
        /// </summary>
        internal RNPaintBoardLibraryObjCModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPaintBoardLibraryObjC";
            }
        }
    }
}
