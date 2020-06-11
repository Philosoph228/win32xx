REM: A batch program to rebuild the Win32++ samples using VS2019 Community.
REM: The contents of the log file is erased 

REM: Set the paths and environment variables
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x86


::Cleanup
call CleanSamples
call CleanTutorials

REM: Change the directory to the Samples parent
pushd ..\Samples
if exist "..\output\VS2019\Debug" rmdir /s /q "..\output\VS2019\Debug"
if exist "..\output\VS2019\Release" rmdir /s /q "..\output\VS2019\Release"
if exist "..\output\VS2019\Tutorials" rmdir /s /q "..\output\VS2019\Tutorials"

@echo on

::Compile code
MSBuild Animation\ProjectFiles\Animation_2019.sln /p:Configuration=Debug                 > "..\output\VS2019.log"
MSBuild Animation\ProjectFiles\Animation_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild Browser\ProjectFiles\Browser_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild Browser\ProjectFiles\Browser_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild CommonDialogs\ProjectFiles\CommonDialogs_2019.sln /p:Configuration=Debug         >>"..\output\VS2019.log"
MSBuild CommonDialogs\ProjectFiles\CommonDialogs_2019.sln /p:Configuration=Release       >>"..\output\VS2019.log"
MSBuild Console\ProjectFiles\Console_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild Console\ProjectFiles\Console_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild ContextHelp\ProjectFiles\ContextHelp_2019.sln /p:Configuration=Debug             >>"..\output\VS2019.log"
MSBuild ContextHelp\ProjectFiles\ContextHelp_2019.sln /p:Configuration=Release           >>"..\output\VS2019.log"
MSBuild CustomControl\ProjectFiles\CustomControl_2019.sln /p:Configuration=Debug         >>"..\output\VS2019.log"
MSBuild CustomControl\ProjectFiles\CustomControl_2019.sln /p:Configuration=Release       >>"..\output\VS2019.log"
MSBuild DateTime\ProjectFiles\DateTime_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild DateTime\ProjectFiles\DateTime_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild DDXDemo\ProjectFiles\DDXDemo_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild DDXDemo\ProjectFiles\DDXDemo_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild Dialog\ProjectFiles\Dialog_2019.sln /p:Configuration=Debug                       >>"..\output\VS2019.log"
MSBuild Dialog\ProjectFiles\Dialog_2019.sln /p:Configuration=Release                     >>"..\output\VS2019.log"
MSBuild DialogBars\ProjectFiles\DialogBars_2019.sln /p:Configuration=Debug               >>"..\output\VS2019.log"
MSBuild DialogBars\ProjectFiles\DialogBars_2019.sln /p:Configuration=Release             >>"..\output\VS2019.log"
MSBuild DialogDemo\ProjectFiles\DialogDemo_2019.sln /p:Configuration=Debug               >>"..\output\VS2019.log"
MSBuild DialogDemo\ProjectFiles\DialogDemo_2019.sln /p:Configuration=Release             >>"..\output\VS2019.log"
MSBuild DialogResizing\ProjectFiles\DialogResizing_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild DialogResizing\ProjectFiles\DialogResizing_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild DialogTab\ProjectFiles\DialogTab_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild DialogTab\ProjectFiles\DialogTab_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild Direct2D\ProjectFiles\Direct2D_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild Direct2D\ProjectFiles\Direct2D_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild DirectX9\ProjectFiles\DirectX9_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild DirectX9\ProjectFiles\DirectX9_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild DirectX11\ProjectFiles\DirectX11_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild DirectX11\ProjectFiles\DirectX11_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild DLL\ProjectFiles\MakeDLL_2019.sln /p:Configuration=Debug                         >>"..\output\VS2019.log"
MSBuild DLL\ProjectFiles\MakeDLL_2019.sln /p:Configuration=Release                       >>"..\output\VS2019.log"
MSBuild DLL\ProjectFiles\TestDLL_2019.sln /p:Configuration=Debug                         >>"..\output\VS2019.log"
MSBuild DLL\ProjectFiles\TestDLL_2019.sln /p:Configuration=Release                       >>"..\output\VS2019.log"
MSBuild Dock\ProjectFiles\Dock_2019.sln /p:Configuration=Debug                           >>"..\output\VS2019.log"
MSBuild Dock\ProjectFiles\Dock_2019.sln /p:Configuration=Release                         >>"..\output\VS2019.log"
MSBuild DockContainer\ProjectFiles\DockContainer_2019.sln /p:Configuration=Debug         >>"..\output\VS2019.log"
MSBuild DockContainer\ProjectFiles\DockContainer_2019.sln /p:Configuration=Release       >>"..\output\VS2019.log"
MSBuild DockTabbedMDI\ProjectFiles\DockTabbedMDI_2019.sln /p:Configuration=Debug         >>"..\output\VS2019.log"
MSBuild DockTabbedMDI\ProjectFiles\DockTabbedMDI_2019.sln /p:Configuration=Release       >>"..\output\VS2019.log"
MSBuild DoubleBuffer\ProjectFiles\DoubleBuffer_2019.sln /p:Configuration=Debug           >>"..\output\VS2019.log"
MSBuild DoubleBuffer\ProjectFiles\DoubleBuffer_2019.sln /p:Configuration=Release         >>"..\output\VS2019.log"
MSBuild Explorer\ProjectFiles\Explorer_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild Explorer\ProjectFiles\Explorer_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild FastGDI\ProjectFiles\FastGDI_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild FastGDI\ProjectFiles\FastGDI_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild FilePrintPreview\ProjectFiles\FilePrintPreview_2019.sln /p:Configuration=Debug   >>"..\output\VS2019.log"
MSBuild FilePrintPreview\ProjectFiles\FilePrintPreview_2019.sln /p:Configuration=Release >>"..\output\VS2019.log"
MSBuild FormDocView\ProjectFiles\FormDemo_2019.sln /p:Configuration=Debug                >>"..\output\VS2019.log"
MSBuild FormDocView\ProjectFiles\FormDemo_2019.sln /p:Configuration=Release              >>"..\output\VS2019.log"
MSBuild Frame\ProjectFiles\Frame_2019.sln /p:Configuration=Debug                         >>"..\output\VS2019.log"
MSBuild Frame\ProjectFiles\Frame_2019.sln /p:Configuration=Release                       >>"..\output\VS2019.log"
MSBuild INIFrame\ProjectFiles\INIFrame_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild INIFrame\ProjectFiles\INIFrame_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild GDIPlus\ProjectFiles\GDIPlus_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild GDIPlus\ProjectFiles\GDIPlus_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild MDIDockFrame\ProjectFiles\MDIDockFrame_2019.sln /p:Configuration=Debug           >>"..\output\VS2019.log"
MSBuild MDIDockFrame\ProjectFiles\MDIDockFrame_2019.sln /p:Configuration=Release         >>"..\output\VS2019.log"
MSBuild MDIFrame\ProjectFiles\MDIFrame_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild MDIFrame\ProjectFiles\MDIFrame_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild MDIFrameDemo\ProjectFiles\MDIDemo_2019.sln /p:Configuration=Debug                >>"..\output\VS2019.log"
MSBuild MDIFrameDemo\ProjectFiles\MDIDemo_2019.sln /p:Configuration=Release              >>"..\output\VS2019.log"
MSBuild MDIFrameSplitter\ProjectFiles\MDIFrameSplitter_2019.sln /p:Configuration=Debug   >>"..\output\VS2019.log"
MSBuild MDIFrameSplitter\ProjectFiles\MDIFrameSplitter_2019.sln /p:Configuration=Release >>"..\output\VS2019.log"
MSBuild MetaFile\ProjectFiles\MetaFile_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild MetaFile\ProjectFiles\MetaFile_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild MovieShow\ProjectFiles\MovieShow_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild MovieShow\ProjectFiles\MovieShow_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild NetClient\ProjectFiles\NetClient_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild NetClient\ProjectFiles\NetClient_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild NetClientAsync\ProjectFiles\NetClientAsync_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild NetClientAsync\ProjectFiles\NetClientAsync_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild NetServer\ProjectFiles\NetServer_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild NetServer\ProjectFiles\NetServer_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild NetServerAsync\ProjectFiles\NetServerAsync_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild NetServerAsync\ProjectFiles\NetServerAsync_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild NotePad\ProjectFiles\Notepad_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild NotePad\ProjectFiles\Notepad_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild Performance\ProjectFiles\Performance_2019.sln /p:Configuration=Debug             >>"..\output\VS2019.log"
MSBuild Performance\ProjectFiles\Performance_2019.sln /p:Configuration=Release           >>"..\output\VS2019.log"
MSBuild Picture\ProjectFiles\Picture_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild Picture\ProjectFiles\Picture_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild PrintPreview\ProjectFiles\PrintPreview_2019.sln /p:Configuration=Debug           >>"..\output\VS2019.log"
MSBuild PrintPreview\ProjectFiles\PrintPreview_2019.sln /p:Configuration=Release         >>"..\output\VS2019.log"
MSBuild PropertySheet\ProjectFiles\PropertySheet_2019.sln /p:Configuration=Debug         >>"..\output\VS2019.log"
MSBuild PropertySheet\ProjectFiles\PropertySheet_2019.sln /p:Configuration=Release       >>"..\output\VS2019.log"
MSBuild ReBarDemo\ProjectFiles\ReBarDemo_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild ReBarDemo\ProjectFiles\ReBarDemo_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild RibbonDockFrame\ProjectFiles\RibbonDockFrame_2019.sln /p:Configuration=Debug     >>"..\output\VS2019.log"
MSBuild RibbonDockFrame\ProjectFiles\RibbonDockFrame_2019.sln /p:Configuration=Release   >>"..\output\VS2019.log"
MSBuild RibbonFrame\ProjectFiles\RibbonFrame_2019.sln /p:Configuration=Debug             >>"..\output\VS2019.log"
MSBuild RibbonFrame\ProjectFiles\RibbonFrame_2019.sln /p:Configuration=Release           >>"..\output\VS2019.log"
MSBuild RibbonMDIFrame\ProjectFiles\RibbonMDIFrame_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild RibbonMDIFrame\ProjectFiles\RibbonMDIFrame_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild RibbonSimple\ProjectFiles\SimpleRibbon_2019.sln /p:Configuration=Debug           >>"..\output\VS2019.log"
MSBuild RibbonSimple\ProjectFiles\SimpleRibbon_2019.sln /p:Configuration=Release         >>"..\output\VS2019.log"
MSBuild RoundWindow\ProjectFiles\Round_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild RoundWindow\ProjectFiles\Round_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild Scribble\ProjectFiles\Scribble_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild Scribble\ProjectFiles\Scribble_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild ScrollTextFile\ProjectFiles\ScrollTextFile_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild ScrollTextFile\ProjectFiles\ScrollTextFile_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Simple\ProjectFiles\Simple_2019.sln /p:Configuration=Debug                       >>"..\output\VS2019.log"
MSBuild Simple\ProjectFiles\Simple_2019.sln /p:Configuration=Release                     >>"..\output\VS2019.log"
MSBuild Splitter\ProjectFiles\Splitter_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild Splitter\ProjectFiles\Splitter_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild StatusBar\ProjectFiles\StatusBar_2019.sln /p:Configuration=Debug                 >>"..\output\VS2019.log"
MSBuild StatusBar\ProjectFiles\StatusBar_2019.sln /p:Configuration=Release               >>"..\output\VS2019.log"
MSBuild StatusBarEx\ProjectFiles\StatusBarEx_2019.sln /p:Configuration=Debug             >>"..\output\VS2019.log"
MSBuild StatusBarEx\ProjectFiles\StatusBarEx_2019.sln /p:Configuration=Release           >>"..\output\VS2019.log"
MSBuild TabDemo\ProjectFiles\TabDemo_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild TabDemo\ProjectFiles\TabDemo_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild TaskDialog\ProjectFiles\TaskDialog_2019.sln /p:Configuration=Debug               >>"..\output\VS2019.log"
MSBuild TaskDialog\ProjectFiles\TaskDialog_2019.sln /p:Configuration=Release             >>"..\output\VS2019.log"
MSBuild Themes\ProjectFiles\Themes_2019.sln /p:Configuration=Debug                       >>"..\output\VS2019.log"
MSBuild Themes\ProjectFiles\Themes_2019.sln /p:Configuration=Release                     >>"..\output\VS2019.log"
MSBuild Threads\ProjectFiles\Threads_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild Threads\ProjectFiles\Threads_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"
MSBuild TimeDemo\ProjectFiles\TimeDemo_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild TimeDemo\ProjectFiles\TimeDemo_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild ToolBarDemo\ProjectFiles\ToolBarDemo_2019.sln /p:Configuration=Debug             >>"..\output\VS2019.log"
MSBuild ToolBarDemo\ProjectFiles\ToolBarDemo_2019.sln /p:Configuration=Release           >>"..\output\VS2019.log"
MSBuild ToolTips\ProjectFiles\ToolTips_2019.sln /p:Configuration=Debug                   >>"..\output\VS2019.log"
MSBuild ToolTips\ProjectFiles\ToolTips_2019.sln /p:Configuration=Release                 >>"..\output\VS2019.log"
MSBuild Tray\ProjectFiles\Tray_2019.sln /p:Configuration=Debug                           >>"..\output\VS2019.log"
MSBuild Tray\ProjectFiles\Tray_2019.sln /p:Configuration=Release                         >>"..\output\VS2019.log"
MSBuild WinPlot\ProjectFiles\WinPlot_2019.sln /p:Configuration=Debug                     >>"..\output\VS2019.log"
MSBuild WinPlot\ProjectFiles\WinPlot_2019.sln /p:Configuration=Release                   >>"..\output\VS2019.log"

mkdir "..\output\VS2019"
mkdir "..\output\VS2019\Debug"

ECHO "Copying Debug Samples" >>"..\output\VS2019.log"
copy Animation\ProjectFiles\Debug\Animation.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Browser\ProjectFiles\Debug\Browser.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy CommonDialogs\ProjectFiles\Debug\CommonDialogs.exe       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Console\ProjectFiles\Debug\Console.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy ContextHelp\ProjectFiles\Debug\ContextHelp.exe           "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy CustomControl\ProjectFiles\Debug\CustomControl.exe       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DateTime\ProjectFiles\Debug\DateTime.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DDXDemo\ProjectFiles\Debug\DDXDemo.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Dialog\ProjectFiles\Debug\Dialog.exe                     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DialogBars\ProjectFiles\Debug\DialogBars.exe             "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DialogDemo\ProjectFiles\Debug\DialogDemo.exe             "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DialogResizing\ProjectFiles\Debug\DialogResizing.exe     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DialogTab\ProjectFiles\Debug\DialogTab.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Direct2D\ProjectFiles\Debug\Direct2D.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DirectX9\ProjectFiles\Debug\DirectX9.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DirectX11\ProjectFiles\Debug\DirectX11.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DirectX11\ProjectFiles\DirectX11.fx                      "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DLL\ProjectFiles\Debug\MyDLL.dll                         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DLL\ProjectFiles\Debug\TestDLL.exe                       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Dock\ProjectFiles\Debug\Dock.exe                         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DockContainer\ProjectFiles\Debug\DockContainer.exe       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DockTabbedMDI\ProjectFiles\Debug\DockTabbedMDI.exe       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy DoubleBuffer\ProjectFiles\Debug\DoubleBuffer.exe         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Explorer\ProjectFiles\Debug\Explorer.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy FastGDI\ProjectFiles\Debug\FastGDI.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy FilePrintPreview\ProjectFiles\Debug\FilePrintPreview.exe "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy FormDocView\ProjectFiles\Debug\FormDemo.exe              "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Frame\ProjectFiles\Debug\Frame.exe                       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy INIFrame\ProjectFiles\Debug\INIFrame.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy GDIPlus\ProjectFiles\Debug\GDIPlus.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MDIDockFrame\ProjectFiles\Debug\MDIDockFrame.exe         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MDIFrame\ProjectFiles\Debug\MDIFrame.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MDIFrameDemo\ProjectFiles\Debug\MDIDemo.exe              "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MDIFrameSplitter\ProjectFiles\Debug\MDIFrameSplitter.exe "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MetaFile\ProjectFiles\Debug\MetaFile.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy MovieShow\ProjectFiles\Debug\MovieShow.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy NetClient\ProjectFiles\Debug\NetClient.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy NetClientAsync\ProjectFiles\Debug\NetClientAsync.exe     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy NetServer\ProjectFiles\Debug\NetServer.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy NetServerAsync\ProjectFiles\Debug\NetServerAsync.exe     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy NotePad\ProjectFiles\Debug\Notepad.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Performance\ProjectFiles\Debug\Performance.exe           "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Picture\ProjectFiles\Debug\Picture.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy PrintPreview\ProjectFiles\Debug\PrintPreview.exe         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy PropertySheet\ProjectFiles\Debug\PropertySheet.exe       "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy ReBarDemo\ProjectFiles\Debug\ReBarDemo.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy RibbonDockFrame\ProjectFiles\Debug\RibbonDockFrame.exe   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy RibbonFrame\ProjectFiles\Debug\RibbonFrame.exe           "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy RibbonMDIFrame\ProjectFiles\Debug\RibbonMDIFrame.exe     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy RibbonSimple\ProjectFiles\Debug\SimpleRibbon.exe         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy RoundWindow\ProjectFiles\Debug\Round.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Scribble\ProjectFiles\Debug\Scribble.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy ScrollTextFile\ProjectFiles\Debug\ScrollTextFile.exe     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Simple\ProjectFiles\Debug\Simple.exe                     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Splitter\ProjectFiles\Debug\Splitter.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy StatusBar\ProjectFiles\Debug\StatusBar.exe               "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy StatusBarEx\ProjectFiles\Debug\StatusBarEx.exe           "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy TabDemo\ProjectFiles\Debug\TabDemo.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy TaskDialog\ProjectFiles\Debug\TaskDialog.exe             "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Themes\ProjectFiles\Debug\Themes.exe                     "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Threads\ProjectFiles\Debug\Threads.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy TimeDemo\ProjectFiles\Debug\TimeDemo.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy ToolBarDemo\ProjectFiles\Debug\ToolBarDemo.exe           "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy ToolTips\ProjectFiles\Debug\ToolTips.exe                 "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy Tray\ProjectFiles\Debug\Tray.exe                         "..\output\VS2019\Debug"    >>"..\output\VS2019.log"
copy WinPlot\ProjectFiles\Debug\WinPlot.exe                   "..\output\VS2019\Debug"    >>"..\output\VS2019.log"

mkdir "..\output\VS2019\Release"

ECHO "Copying Release Samples" >>"..\output\VS2019.log"
copy Animation\ProjectFiles\Release\Animation.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Browser\ProjectFiles\Release\Browser.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy CommonDialogs\ProjectFiles\Release\CommonDialogs.exe     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Console\ProjectFiles\Release\Console.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy ContextHelp\ProjectFiles\Release\ContextHelp.exe         "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy CustomControl\ProjectFiles\Release\CustomControl.exe     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DateTime\ProjectFiles\Release\DateTime.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DDXDemo\ProjectFiles\Release\DDXDemo.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Dialog\ProjectFiles\Release\Dialog.exe                   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DialogBars\ProjectFiles\Release\DialogBars.exe           "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DialogDemo\ProjectFiles\Release\DialogDemo.exe           "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DialogResizing\ProjectFiles\Release\DialogResizing.exe   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DialogTab\ProjectFiles\Release\DialogTab.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Direct2D\ProjectFiles\Release\Direct2D.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DirectX9\ProjectFiles\Release\DirectX9.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DirectX11\ProjectFiles\Release\DirectX11.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DirectX11\ProjectFiles\DirectX11.fx                      "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DLL\ProjectFiles\Release\MyDLL.dll                       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DLL\ProjectFiles\Release\TestDLL.exe                     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Dock\ProjectFiles\Release\Dock.exe                       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DockContainer\ProjectFiles\Release\DockContainer.exe     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DockTabbedMDI\ProjectFiles\Release\DockTabbedMDI.exe     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy DoubleBuffer\ProjectFiles\Release\DoubleBuffer.exe       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Explorer\ProjectFiles\Release\Explorer.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy FastGDI\ProjectFiles\Release\FastGDI.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy FilePrintPreview\ProjectFiles\Release\FilePrintPreview.exe "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy FormDocView\ProjectFiles\Release\FormDemo.exe            "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Frame\ProjectFiles\Release\Frame.exe                     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy INIFrame\ProjectFiles\Release\INIFrame.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy GDIPlus\ProjectFiles\Release\GDIPlus.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MDIDockFrame\ProjectFiles\Release\MDIDockFrame.exe       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MDIFrame\ProjectFiles\Release\MDIFrame.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MDIFrameDemo\ProjectFiles\Release\MDIDemo.exe            "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MDIFrameSplitter\ProjectFiles\Release\MDIFrameSplitter.exe "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MetaFile\ProjectFiles\Release\MetaFile.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy MovieShow\ProjectFiles\Release\MovieShow.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy NetClient\ProjectFiles\Release\NetClient.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy NetClientAsync\ProjectFiles\Release\NetClientAsync.exe   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy NetServer\ProjectFiles\Release\NetServer.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy NetServerAsync\ProjectFiles\Release\NetServerAsync.exe   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy NotePad\ProjectFiles\Release\Notepad.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Performance\ProjectFiles\Release\Performance.exe         "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Picture\ProjectFiles\Release\Picture.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy PrintPreview\ProjectFiles\Release\PrintPreview.exe       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy PropertySheet\ProjectFiles\Release\PropertySheet.exe     "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy ReBarDemo\ProjectFiles\Release\ReBarDemo.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy RibbonDockFrame\ProjectFiles\Release\RibbonDockFrame.exe "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy RibbonFrame\ProjectFiles\Release\RibbonFrame.exe         "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy RibbonMDIFrame\ProjectFiles\Release\RibbonMDIFrame.exe   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy RibbonSimple\ProjectFiles\Release\SimpleRibbon.exe       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy RoundWindow\ProjectFiles\Release\Round.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Scribble\ProjectFiles\Release\Scribble.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy ScrollTextFile\ProjectFiles\Release\ScrollTextFile.exe   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Simple\ProjectFiles\Release\Simple.exe                   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Splitter\ProjectFiles\Release\Splitter.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy StatusBar\ProjectFiles\Release\StatusBar.exe             "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy StatusBarEx\ProjectFiles\Release\StatusBarEx.exe         "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy TabDemo\ProjectFiles\Release\TabDemo.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy TaskDialog\ProjectFiles\Release\TaskDialog.exe           "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Themes\ProjectFiles\Release\Themes.exe                   "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Threads\ProjectFiles\Release\Threads.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy TimeDemo\ProjectFiles\Release\TimeDemo.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy ToolBarDemo\ProjectFiles\Release\ToolBarDemo.exe         "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy ToolTips\ProjectFiles\Release\ToolTips.exe               "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy Tray\ProjectFiles\Release\Tray.exe                       "..\output\VS2019\Release"    >>"..\output\VS2019.log"
copy WinPlot\ProjectFiles\Release\WinPlot.exe                 "..\output\VS2019\Release"    >>"..\output\VS2019.log"


REM: Change the directory to the Tutorials parent
popd
pushd ..\Tutorials

REM: Compile Tutorials
ECHO "Compiling Tutorials" >>"..\output\VS2019.log"
::Compile code
MSBuild Tutorial1\ProjectFiles\Tutorial1_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial1\ProjectFiles\Tutorial1_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial2\ProjectFiles\Tutorial2_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial2\ProjectFiles\Tutorial2_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial3\ProjectFiles\Tutorial3_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial3\ProjectFiles\Tutorial3_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial4\ProjectFiles\Tutorial4_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial4\ProjectFiles\Tutorial4_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial5\ProjectFiles\Tutorial5_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial5\ProjectFiles\Tutorial5_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial6\ProjectFiles\Tutorial6_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial6\ProjectFiles\Tutorial6_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial7\ProjectFiles\Tutorial7_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial7\ProjectFiles\Tutorial7_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial8\ProjectFiles\Tutorial8_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial8\ProjectFiles\Tutorial8_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial9\ProjectFiles\Tutorial9_2019.sln /p:Configuration=Debug       >>"..\output\VS2019.log"
MSBuild Tutorial9\ProjectFiles\Tutorial9_2019.sln /p:Configuration=Release     >>"..\output\VS2019.log"
MSBuild Tutorial10\ProjectFiles\Tutorial10_2019.sln /p:Configuration=Debug     >>"..\output\VS2019.log"
MSBuild Tutorial10\ProjectFiles\Tutorial10_2019.sln /p:Configuration=Release   >>"..\output\VS2019.log"
MSBuild Tutorial11\ProjectFiles\Tutorial11_2019.sln /p:Configuration=Debug     >>"..\output\VS2019.log"
MSBuild Tutorial11\ProjectFiles\Tutorial11_2019.sln /p:Configuration=Release   >>"..\output\VS2019.log"

mkdir "..\output\VS2019\Tutorials"
mkdir "..\output\VS2019\Tutorials\Debug"

ECHO "Copying Debug Tutorials" >>"..\output\VS2019.log"
copy Tutorial1\ProjectFiles\Debug\Tutorial1.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial2\ProjectFiles\Debug\Tutorial2.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial3\ProjectFiles\Debug\Tutorial3.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial4\ProjectFiles\Debug\Tutorial4.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial5\ProjectFiles\Debug\Tutorial5.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial6\ProjectFiles\Debug\Tutorial6.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial7\ProjectFiles\Debug\Tutorial7.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial8\ProjectFiles\Debug\Tutorial8.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial9\ProjectFiles\Debug\Tutorial9.exe         "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial10\ProjectFiles\Debug\Tutorial10.exe       "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"
copy Tutorial11\ProjectFiles\Debug\Tutorial11.exe       "..\output\VS2019\Tutorials\Debug"    >>"..\output\VS2019.log"

mkdir "..\output\VS2019\Tutorials\Release"

ECHO "Copying Release Tutorials" >>"..\output\VS2019.log"
copy Tutorial1\ProjectFiles\Release\Tutorial1.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial2\ProjectFiles\Release\Tutorial2.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial3\ProjectFiles\Release\Tutorial3.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial4\ProjectFiles\Release\Tutorial4.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial5\ProjectFiles\Release\Tutorial5.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial6\ProjectFiles\Release\Tutorial6.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial7\ProjectFiles\Release\Tutorial7.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial8\ProjectFiles\Release\Tutorial8.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial9\ProjectFiles\Release\Tutorial9.exe       "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial10\ProjectFiles\Release\Tutorial10.exe     "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"
copy Tutorial11\ProjectFiles\Release\Tutorial11.exe     "..\output\VS2019\Tutorials\Release"    >>"..\output\VS2019.log"

REM: Pop the directory change off the stack
popd


