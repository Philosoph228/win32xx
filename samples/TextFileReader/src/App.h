/* (02-Aug-2016) [Tab/Indent: 4/4][Line/Box: 80/74]                    (App.h) *
********************************************************************************
|                                                                              |
|                Authors: Robert Tausworthe, David Nash, 2020                  |
|                                                                              |
===============================================================================*

    Contents Description: Declaration of the CApp class for this sample program 
    using the Win32++ Windows interface classes, Copyright (c) 2005-2020 David 
    Nash, under permissions granted therein.

    Programming Notes: The programming standards roughly follow those 
    established by the 1997-1999 Jet Propulsion Laboratory Network Planning 
    and Preparation Subsystem project for C++ programming.

*******************************************************************************/

#ifndef SDI_APP_H
#define SDI_APP_H

/*============================================================================*/
    class 
CApp : public CWinApp                                                       /*

    This class defines the top-level architecture of the program.
*-----------------------------------------------------------------------------*/
{
    public:
        CApp();
        virtual ~CApp(){}

        BOOL        InitInstance();
        CMainFrame& GetFrame() { return m_frame;}

    private:
        CString     MakeAppDataPath(const CString& subpath) const;
        ULONG       DatInt(LPCTSTR) const;
        CString     IntDat(ULONG) const;

        CMainFrame  m_frame; 
        CString     m_months;
};

/*============================================================================*/
    inline
CApp* TheApp()                                                              /*

    Handy global method for communicating with the application.
*----------------------------------------------------------------------------*/
{
    return (CApp*)GetApp(); 
}
/*-----------------------------------------------------------------------------*/
#endif // define SDI_APP_H
