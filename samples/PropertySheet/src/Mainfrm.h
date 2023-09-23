/////////////////////////////
// Mainfrm.h
//

#ifndef MAINFRM_H
#define MAINFRM_H

#include "View.h"
#include "MyPropertySheet.h"


///////////////////////////////////////////////////////////
// CMainFrame manages the application's main window.
// The main window is a frame that has a menubar, toolbar,
// statusbar and view window.
class CMainFrame : public CFrame
{
public:
    CMainFrame();
    virtual ~CMainFrame();
    virtual HWND Create(HWND parent = 0);

protected:
    // Virtual functions that override base class functions
    virtual BOOL OnCommand(WPARAM wparam, LPARAM lparam);
    virtual int  OnCreate(CREATESTRUCT& cs);
    virtual void OnInitialUpdate();
    virtual void SetupMenuIcons();
    virtual void SetupToolBar();
    virtual LRESULT WndProc(UINT msg, WPARAM wparam, LPARAM lparam);

private:
    CMainFrame(const CMainFrame&);                // Disable copy construction
    CMainFrame& operator = (const CMainFrame&);   // Disable assignment operator

    // Command handlers
    BOOL OnFileExit();
    BOOL OnModal();
    BOOL OnModeless();
    BOOL OnWizard();

    // Member variables
    CView m_view;
    CMyPropertySheet m_modelessPS;
};

#endif //MAINFRM_H

