////////////////////////////////////////////////////
// Mainfrm.cpp

#include "stdafx.h"
#include "resource.h"
#include "RibbonUI.h"
#include "mainfrm.h"


// Definitions for the CMainFrame class
CMainFrame::CMainFrame()
{
	// Constructor for CMainFrame. Its called after CFrame's constructor

	//Set m_View as the view window of the frame
	SetView(m_View);

	// Set the registry key name, and load the initial window position
	// Use a registry key name like "CompanyName\\Application"
	LoadRegistrySettings(_T("Win32++\\Frame"));
}

CMainFrame::~CMainFrame()
{
	// Destructor for CMainFrame.
	m_Ribbon.DestroyRibbon();
}

BOOL CMainFrame::OnCommand(WPARAM wParam, LPARAM lParam)
{
	// OnCommand responds to menu and and toolbar input

	UNREFERENCED_PARAMETER(lParam);

	switch(LOWORD(wParam))
	{
	case IDM_FILE_OPEN:
		OnFileOpen();
		return TRUE;
	case IDM_FILE_SAVE:
		// Refer to the tutorial for an example of OnFileSave()
		return TRUE;
	case IDM_FILE_SAVEAS:
		// Refer to the tutorial for an example of OnFileSaveAs()
		return TRUE;
	case IDM_FILE_PRINT:
		OnFilePrint();
		return TRUE;
	case IDM_FILE_EXIT:
		// End the application
		::PostMessage(m_hWnd, WM_CLOSE, 0, 0);
		return TRUE;
	case IDW_VIEW_STATUSBAR:
		OnViewStatusbar();
		return TRUE;
	case IDW_VIEW_TOOLBAR:
		OnViewToolbar();
		return TRUE;
	case IDM_HELP_ABOUT:
		// Display the help dialog
		OnHelp();
		return TRUE;
	}

	return FALSE;
}

/*void CMainFrame::OnCreate()
{
	// OnCreate controls the way the frame is created.
	// Overriding CFrame::Oncreate is optional.
	// The default for the following variables is TRUE

	// m_bShowIndicatorStatus = FALSE;	// Don't show statusbar indicators
	// m_bShowMenuStatus = FALSE;		// Don't show toolbar or menu status
	// m_bUseRebar = FALSE;				// Don't use rebars
	// m_bUseThemes = FALSE;            // Don't use themes
	// m_bUseToolbar = FALSE;			// Don't use a toolbar

	// call the base class function
	CFrame::OnCreate();
}
*/

void CMainFrame::OnCreate()
{
	// OnCreate is called automatically during window creation when a
	// WM_CREATE message received.

	// Tasks such as setting the icon, creating child windows, or anything
	// associated with creating windows are normally performed here.

	if (IsRibbonUsed())
	{
		m_bUseRebar = FALSE;			// Don't use rebars
		m_bUseToolbar = FALSE;			// Don't use a toolbar
	
		CFrame::OnCreate();

		if (m_Ribbon.CreateRibbon(this))
			TRACE(_T("Ribbon Created Succesfully\n"));
		else
			throw CWinException(_T("Failed to create ribbon"));
	}
	else
		CFrame::OnCreate();
}

void CMainFrame::OnDestroy()
{
	if (IsRibbonUsed())
	{
		m_Ribbon.DestroyRibbon();
	} 

	CFrame::OnDestroy();
}

void CMainFrame::OnInitialUpdate()
{
	// The frame is now created.
	// Place any additional startup code here.

	TRACE(_T("CMainFrame::OnInitialUpdate\n"));
}

void CMainFrame::OnFileOpen()
{
	TCHAR szFilePathName[_MAX_PATH] = _T("");
	OPENFILENAME ofn = {0};
	ofn.lStructSize = sizeof(OPENFILENAME);
	ofn.hwndOwner = m_hWnd;
	ofn.lpstrFile = szFilePathName;
	ofn.nMaxFile = _MAX_PATH;
	ofn.lpstrTitle = _T("Open File");

	// Bring up the dialog, and open the file
	::GetOpenFileName(&ofn);

	// TODO:
	// Add your own code here. Refer to the tutorial for additional information 
}

void CMainFrame::OnFilePrint()
{
	// Bring up a dialog to choose the printer
	PRINTDLG pd = {0};
	pd.lStructSize = sizeof( pd );
	pd.Flags = PD_RETURNDC;

	// Retrieve the printer DC
	PrintDlg( &pd );
	
	// TODO:
	// Add your own code here. Refer to the tutorial for additional information 
}

LRESULT CMainFrame::OnNotify(WPARAM wParam, LPARAM lParam)
{
	// Process notification messages sent by child windows
//	switch(((LPNMHDR)lParam)->code)
//	{
 		//Add case statments for each notification message here
//	}

	// Some notifications should return a value when handled
	return CFrame::OnNotify(wParam, lParam);
}

#if defined (USE_RIBBON) && defined(__IUIRibbon_INTERFACE_DEFINED__)
HRESULT CMainFrame::RibbonExecute(UINT32 nCmdID, UI_EXECUTIONVERB verb, const PROPERTYKEY* key, const PROPVARIANT* ppropvarValue, IUISimplePropertySet* pCommandExecutionProperties)
{
	UNREFERENCED_PARAMETER(pCommandExecutionProperties);
	UNREFERENCED_PARAMETER(ppropvarValue);
	UNREFERENCED_PARAMETER(key);
	UNREFERENCED_PARAMETER(verb);

	HRESULT hr = S_OK;
	switch(nCmdID)
	{
	case IDC_CMD_NEW:
//		OnFileNew();
		break;
	case IDC_CMD_OPEN:
		OnFileOpen();
		break;
	case IDC_CMD_SAVE:
//		OnFileSave();
		break;
	case IDC_CMD_SAVE_AS:
//		OnFileSaveAs();
		break;
	case IDC_CMD_PRINT:
		OnFilePrint();
		 break;
	case IDC_CMD_COPY:
		TRACE(_T("Copy\n"));
		break;
	case IDC_CMD_CUT:
		TRACE(_T("Cut\n"));
		break;
	case IDC_CMD_PASTE:
		TRACE(_T("Paste\n"));
		break;
	case IDC_CMD_ABOUT:
		TRACE(_T("About\n"));
		break;
	case IDC_CMD_EXIT:
	//	m_Ribbon.DestroyRibbon();
		PostQuitMessage(0);
		break;
	default:
		TRACE(_T("Unknown button\n"));
		break;
	}

	return hr; 
}
#endif

void CMainFrame::SetupToolbar()
{
	// Set the Resource IDs for the toolbar buttons
	AddToolbarButton( IDM_FILE_NEW   );
	AddToolbarButton( IDM_FILE_OPEN  );
	AddToolbarButton( IDM_FILE_SAVE  );
	
	AddToolbarButton( 0 );				// Separator
	AddToolbarButton( IDM_EDIT_CUT,   FALSE );	// disabled button
	AddToolbarButton( IDM_EDIT_COPY,  FALSE );	// disabled button
	AddToolbarButton( IDM_EDIT_PASTE, FALSE );	// disabled button
	
	AddToolbarButton( 0 );				// Separator
	AddToolbarButton( IDM_FILE_PRINT );
	
	AddToolbarButton( 0 );				// Separator
	AddToolbarButton( IDM_HELP_ABOUT );
}

LRESULT CMainFrame::WndProc(UINT uMsg, WPARAM wParam, LPARAM lParam)
{
//	switch (uMsg)
//	{
//		Add case statements for each messages to be handled here
//	}

	// pass unhandled messages on for default processing
	return WndProcDefault(uMsg, wParam, lParam);
}

