| world morph area extent |
"Report by any mean error"
Transcript
   showOnDisplay: false;
   logToFile: true;
   logToStdout: true.
"Install change set"
ChangeSet installNewUpdates.
"System configurations"
Utilities setAuthorName: 'Oliver Lawrence Dupont' initials: 'old'.
Preferences at: #logDebuggerStackToFile put: true.
Preferences at: #autoNumberUserChanges put: false.
Preferences at: #focusFollowsMouse put: true.
"Install package and your code"
Feature require: #'Theme-Themes'.
"Feature require: #'MyPackage'."
"Morphic operation, to handle with care"
world := UISupervisor ui.
[
Display fullScreenMode: true.
(Delay forSeconds: 1) wait.
UISupervisor whenUIinSafeState: [
(world submorphs reject: [:aMorph | aMorph is: #TaskbarMorph])
   do: [:each | each delete].
"Change to Dark theme"
DarkTheme beCurrent.
"Adjust font size"
Preferences at: #defaultFontSize put: 12.
"Adjust taskbar size"
morph := UISupervisor ui taskbar.
morph scale: 1 / 2.
"Compute the available free space for windows placement"
area := RealEstateAgent maximumUsableArea
   extendBy: 0 @ morph morphHeight negated.
extent := area extent // 2.
"Open a few System Browsers"
Browser open
   morphPosition: 0 @ 0;
   morphExtent: extent.
Browser open
   morphPosition: area width // 2 @ 0;
   morphExtent: extent.
"Open a System Browser on a specific class"
morph := Browser open
   morphPosition: area extent // 2;
   morphExtent: extent.
morph model setClass: Integer selector: nil.
"Open a Workspace with some default contents"
morph := Workspace open.
morph model actualContents: '"Some code"
1 + 2.
"Other code"
5 * 3.'.
morph
   morphPosition: 0 @ (area height // 2);
   morphExtent: extent x @ (2 / 3 * extent y).
"Open a transcript for logs"
Transcript open
   morphPosition: 0 @ (area height // 2 + (2 / 3 * extent y));
   morphExtent: extent x @ (1 / 3 * extent y).
    ]
] fork