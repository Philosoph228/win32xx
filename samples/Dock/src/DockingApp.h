/////////////////////////////
// DockingApp.h
//

#ifndef DOCKINGAPP_H
#define DOCKINGAPP_H

#include "Mainfrm.h"

///////////////////////////////////////
// Declaration of the CDockingApp class
//
class CDockingApp : public CWinApp
{
public:
    CDockingApp();
    virtual ~CDockingApp() {}
    virtual BOOL InitInstance();

private:
    CMainFrame m_MainFrame;
};


#endif // DOCKINGAPP_H
