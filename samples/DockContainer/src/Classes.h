//////////////////////////////////////////////////////////
// Classes.h - Declaration of CViewClasses, CContainClasses,
//              and CDockClasses classes
//

#ifndef CLASSES_H
#define CLASSES_H

#include "MyCombo.h"


///////////////////////////////////////////////
// CViewClasses manages a tree view control.
// This is the view window for CContainClasses,
// and is used to display classes.
class CViewClasses : public CTreeView
{
public:
    CViewClasses();
    virtual ~CViewClasses();
    void SetDPIImages();

protected:
    // Virtual functions that override base class functions
    virtual void OnAttach();
    virtual void OnDestroy();
    virtual void PreCreate(CREATESTRUCT& cs);
    virtual LRESULT WndProc(UINT msg, WPARAM wparam, LPARAM lparam);

private:
    CViewClasses(const CViewClasses&);                // Disable copy construction
    CViewClasses& operator = (const CViewClasses&);   // Disable assignment operator

    // Command handlers
    LRESULT OnDPIChangedAfterParent(UINT msg, WPARAM wparam, LPARAM lparam);
    LRESULT OnMouseActivate(UINT msg, WPARAM wparam, LPARAM lparam);

    // Member variables
    CImageList m_normalImages;
};


////////////////////////////////////////////////////
// CContainClasses manages a dock container. It uses
// CViewClasses as its view.
class CContainClasses : public CDockContainer
{
public:
    CContainClasses();
    virtual ~CContainClasses() {}
    void DPIScaleToolBar();

protected:
    // Virtual functions that override base class functions
    virtual BOOL OnCommand(WPARAM wparam, LPARAM lparam);
    virtual LRESULT OnDPIChangedAfterParent(UINT msg, WPARAM wparam, LPARAM lparam);
    virtual void SetupToolBar();

private:
    CContainClasses(const CContainClasses&);                // Disable copy construction
    CContainClasses& operator = (const CContainClasses&);   // Disable assignment operator

    // Command handlers
    BOOL OnFileNew();
    BOOL OnHelpAbout();

    void AddCombo();

    // Member variables
    CViewClasses m_viewClasses;
    CMyCombo m_comboBoxEx;
    CImageList m_toolbarImages;
};


/////////////////////////////////////////
// CDockClasses manages a docker. It uses
// CContainClasses as its view.
class CDockClasses : public CDocker
{
public:
    CDockClasses();
    virtual ~CDockClasses() {}

protected:
    // Virtual functions that override base class functions
    virtual LRESULT OnDPIChangedAfterParent(UINT msg, WPARAM wparam, LPARAM lparam);

private:
    CDockClasses(const CDockClasses&);                // Disable copy construction
    CDockClasses& operator = (const CDockClasses&);   // Disable assignment operator

    CContainClasses m_classes;
};


#endif  //CLASSES_H
