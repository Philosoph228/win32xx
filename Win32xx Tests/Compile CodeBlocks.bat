REM: A batch program to rebuild the Win32++ samples using Code::Blocks.
REM: The contents of the log file is erased 


REM: Set the paths
@set PATH=c:\Program Files\CodeBlocks;%PATH%
@set PATH=c:\Program Files (x86)\CodeBlocks;%PATH%

REM: Remove old files before we start
call clean
pushd "..\Networking"
call clean
popd

REM: Change the directory to the parent (Pushes the directory change on to the stack)
pushd ..
if exist "Win32xx Tests\Borland" rmdir /s /q "Win32xx Tests\Borland"
if exist "Win32xx Tests\VS2003" rmdir /s /q "Win32xx Tests\VS2003"
if exist "Win32xx Tests\MinGW" rmdir /s /q "Win32xx Tests\MinGW"


REM: Compile the code

codeblocks.exe --rebuild Dialog\ProjectFiles\Dialog.cbp				>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DialogBarsDemo\ProjectFiles\DialogBarsDemo.cbp		>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DialogDemo\ProjectFiles\DialogDemo.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DialogTabDemo\ProjectFiles\DialogTabDemo.cbp		>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DockContainer\ProjectFiles\ContainerDocking.cbp	>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DockSimple\ProjectFiles\Docking.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DockTabbedMDI\ProjectFiles\TabbedMDI.cbp		>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild DocViewForm\ProjectFiles\DocViewForm.cbp		>>"Win32xx Tests\CodeBlocks.log"
REM codeblocks.exe --rebuild DX\ProjectFiles\DX.cbp				>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Explorer\ProjectFiles\Explorer.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild FastGDI\ProjectFiles\FastGDI.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Frame\ProjectFiles\Frame.cbp				>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild MDIDemo\ProjectFiles\MDIDemo.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild MDIFrame\ProjectFiles\MDIFrame.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Networking\ClientDlg\Client.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Networking\ServerDlg\Server.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild NotePad\ProjectFiles\Notepad.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Performance\ProjectFiles\Performance.cbp		>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Picture\ProjectFiles\Picture.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild PropertySheet\ProjectFiles\PropertySheet.cbp		>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Scribble\ProjectFiles\Scribble.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Simple\ProjectFiles\Simple.cbp				>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Splitter\ProjectFiles\Splitter.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild TabDemo\ProjectFiles\TabDemo.cbp			>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Themes\ProjectFiles\Themes.cbp				>>"Win32xx Tests\CodeBlocks.log"
codeblocks.exe --rebuild Threads\ProjectFiles\Threads.cbp			>>"Win32xx Tests\CodeBlocks.log"

REM: Copy the executables to the testing directories
mkdir "Win32xx Tests\VS2003"
mkdir "Win32xx Tests\VS2003\Debug"

ECHO "Copying VS2003 Debug files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\Microsoft\Debug\Browser.exe             "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\Microsoft\Debug\Dialog.exe                   "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\Microsoft\Debug\DialogBarsDemo.exe   "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\Microsoft\Debug\DialogDemo.exe           "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\Microsoft\Debug\DialogTabDemo.exe     "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\Microsoft\Debug\ContainerDocking.exe  "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\Microsoft\Debug\Docking.exe              "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\Microsoft\Debug\TabbedMDI.exe         "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\Microsoft\Debug\DocViewForm.exe         "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\Microsoft\Debug\DX.exe                       "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\Microsoft\Debug\Explorer.exe               "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\Microsoft\Debug\FastGDI.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\Microsoft\Debug\Frame.exe                     "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\Microsoft\Debug\MDIDemo.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\Microsoft\Debug\MDIFrame.exe               "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\Microsoft\Debug\Client.exe                  "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\Microsoft\Debug\Server.exe                  "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\Microsoft\Debug\Notepad.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\Microsoft\Debug\Performance.exe         "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\Microsoft\Debug\Picture.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\Microsoft\Debug\PropertySheet.exe     "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\Microsoft\Debug\Scribble.exe               "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\Microsoft\Debug\Simple.exe                   "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\Microsoft\Debug\Splitter.exe               "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\Microsoft\Debug\TabDemo.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\Microsoft\Debug\Themes.exe                   "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\Microsoft\Debug\Threads.exe                 "Win32xx Tests\VS2003\Debug"    >>"Win32xx Tests\CodeBlocks.log"

mkdir "Win32xx Tests\VS2003\Release"

ECHO "Copying VS2003 Release files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\Microsoft\Release\Browser.exe             "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\Microsoft\Release\Dialog.exe                   "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\Microsoft\Release\DialogBarsDemo.exe   "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\Microsoft\Release\DialogDemo.exe           "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\Microsoft\Release\DialogTabDemo.exe     "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\Microsoft\Release\ContainerDocking.exe  "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\Microsoft\Release\Docking.exe              "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\Microsoft\Release\TabbedMDI.exe         "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\Microsoft\Release\DocViewForm.exe         "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\Microsoft\Release\DX.exe                       "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\Microsoft\Release\Explorer.exe               "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\Microsoft\Release\FastGDI.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\Microsoft\Release\Frame.exe                     "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\Microsoft\Release\MDIDemo.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\Microsoft\Release\MDIFrame.exe               "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\Microsoft\Release\Client.exe                  "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\Microsoft\Release\Server.exe                  "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\Microsoft\Release\Notepad.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\Microsoft\Release\Performance.exe         "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\Microsoft\Release\Picture.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\Microsoft\Release\PropertySheet.exe     "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\Microsoft\Release\Scribble.exe               "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\Microsoft\Release\Simple.exe                   "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\Microsoft\Release\Splitter.exe               "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\Microsoft\Release\TabDemo.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\Microsoft\Release\Themes.exe                   "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\Microsoft\Release\Threads.exe                 "Win32xx Tests\VS2003\Release"    >>"Win32xx Tests\CodeBlocks.log"


REM: Copy the executables to the testing directories
mkdir "Win32xx Tests\Borland"
mkdir "Win32xx Tests\Borland\Debug"

ECHO "Copying Borland Debug files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\Borland\Debug\Browser.exe             "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\Borland\Debug\Dialog.exe                   "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\Borland\Debug\DialogBarsDemo.exe   "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\Borland\Debug\DialogDemo.exe           "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\Borland\Debug\DialogTabDemo.exe     "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\Borland\Debug\ContainerDocking.exe  "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\Borland\Debug\Docking.exe              "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\Borland\Debug\TabbedMDI.exe         "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\Borland\Debug\DocViewForm.exe         "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\Borland\Debug\DX.exe                       "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\Borland\Debug\Explorer.exe               "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\Borland\Debug\FastGDI.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\Borland\Debug\Frame.exe                     "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\Borland\Debug\MDIDemo.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\Borland\Debug\MDIFrame.exe               "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\Borland\Debug\Client.exe                  "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\Borland\Debug\Server.exe                  "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\Borland\Debug\Notepad.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\Borland\Debug\Performance.exe         "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\Borland\Debug\Picture.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\Borland\Debug\PropertySheet.exe     "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\Borland\Debug\Scribble.exe               "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\Borland\Debug\Simple.exe                   "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\Borland\Debug\Splitter.exe               "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\Borland\Debug\TabDemo.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\Borland\Debug\Themes.exe                   "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\Borland\Debug\Threads.exe                 "Win32xx Tests\Borland\Debug"    >>"Win32xx Tests\CodeBlocks.log"

mkdir "Win32xx Tests\Borland\Release"

ECHO "Copying Borland Release files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\Borland\Release\Browser.exe             "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\Borland\Release\Dialog.exe                   "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\Borland\Release\DialogBarsDemo.exe   "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\Borland\Release\DialogDemo               "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\Borland\Release\DialogTabDemo.exe     "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\Borland\Release\ContainerDocking.exe  "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\Borland\Release\Docking.exe              "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\Borland\Release\TabbedMDI.exe         "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\Borland\Release\DocViewForm.exe         "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\Borland\Release\DX.exe                       "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\Borland\Release\Explorer.exe               "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\Borland\Release\FastGDI.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\Borland\Release\Frame.exe                     "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\Borland\Release\MDIDemo.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\Borland\Release\MDIFrame.exe               "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\Borland\Release\Client.exe                  "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\Borland\Release\Server.exe                  "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\Borland\Release\Notepad.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\Borland\Release\Performance.exe         "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\Borland\Release\Picture.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\Borland\Release\PropertySheet.exe     "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\Borland\Release\Scribble.exe               "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\Borland\Release\Simple.exe                   "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\Borland\Release\Splitter.exe               "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\Borland\Release\TabDemo.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\Borland\Release\Themes.exe                   "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\Borland\Release\Threads.exe                 "Win32xx Tests\Borland\Release"    >>"Win32xx Tests\CodeBlocks.log"


REM: Copy the executables to the testing directories
mkdir "Win32xx Tests\MinGW"
mkdir "Win32xx Tests\MinGW\Debug"

ECHO "Copying MinGW Debug files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\GNU\Debug\Browser.exe             "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\GNU\Debug\Dialog.exe                   "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\GNU\Debug\DialogBarsDemo.exe   "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\GNU\Debug\DialogDemo.exe           "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\GNU\Debug\DialogTabDemo.exe     "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\GNU\Debug\ContainerDocking.exe  "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\GNU\Debug\Docking.exe              "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\GNU\Debug\TabbedMDI.exe         "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\GNU\Debug\DocViewForm.exe         "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\GNU\Debug\DX.exe                       "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\GNU\Debug\Explorer.exe               "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\GNU\Debug\FastGDI.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\GNU\Debug\Frame.exe                     "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\GNU\Debug\MDIDemo.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\GNU\Debug\MDIFrame.exe               "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\GNU\Debug\Client.exe                  "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\GNU\Debug\Server.exe                  "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\GNU\Debug\Notepad.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\GNU\Debug\Performance.exe         "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\GNU\Debug\Picture.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\GNU\Debug\PropertySheet.exe     "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\GNU\Debug\Scribble.exe               "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\GNU\Debug\Simple.exe                   "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\GNU\Debug\Splitter.exe               "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\GNU\Debug\TabDemo.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\GNU\Debug\Themes.exe                   "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\GNU\Debug\Threads.exe                 "Win32xx Tests\MinGW\Debug"    >>"Win32xx Tests\CodeBlocks.log"

mkdir "Win32xx Tests\MinGW\Release"

ECHO "Copying MinGW Release files" >>"Win32xx Tests\CodeBlocks.log"
REM copy Browser\ProjectFiles\GNU\Release\Browser.exe             "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Dialog\ProjectFiles\GNU\Release\Dialog.exe                   "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogBarsDemo\ProjectFiles\GNU\Release\DialogBarsDemo.exe   "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogDemo\ProjectFiles\GNU\Release\DialogDemo.exe           "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DialogTabDemo\ProjectFiles\GNU\Release\DialogTabDemo.exe     "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockContainer\ProjectFiles\GNU\Release\ContainerDocking.exe  "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockSimple\ProjectFiles\GNU\Release\Docking.exe              "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DockTabbedMDI\ProjectFiles\GNU\Release\TabbedMDI.exe         "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy DocViewForm\ProjectFiles\GNU\Release\DocViewForm.exe         "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
REM copy DX\ProjectFiles\GNU\Release\DX.exe                       "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Explorer\ProjectFiles\GNU\Release\Explorer.exe               "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy FastGDI\ProjectFiles\GNU\Release\FastGDI.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Frame\ProjectFiles\GNU\Release\Frame.exe                     "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIDemo\ProjectFiles\GNU\Release\MDIDemo.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy MDIFrame\ProjectFiles\GNU\Release\MDIFrame.exe               "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ClientDlg\GNU\Release\Client.exe                  "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Networking\ServerDlg\GNU\Release\Server.exe                  "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy NotePad\ProjectFiles\GNU\Release\Notepad.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Performance\ProjectFiles\GNU\Release\Performance.exe         "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Picture\ProjectFiles\GNU\Release\Picture.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy PropertySheet\ProjectFiles\GNU\Release\PropertySheet.exe     "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Scribble\ProjectFiles\GNU\Release\Scribble.exe               "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Simple\ProjectFiles\GNU\Release\Simple.exe                   "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Splitter\ProjectFiles\GNU\Release\Splitter.exe               "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy TabDemo\ProjectFiles\GNU\Release\TabDemo.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Themes\ProjectFiles\GNU\Release\Themes.exe                   "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"
copy Threads\ProjectFiles\GNU\Release\Threads.exe                 "Win32xx Tests\MinGW\Release"    >>"Win32xx Tests\CodeBlocks.log"



REM: Pop the directory change off the stack
popd
