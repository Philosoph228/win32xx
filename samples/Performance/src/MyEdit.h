/////////////////////////////
// MyEdit.h
//

#ifndef MYEDIT_H
#define MYEDIT_H


///////////////////////////////////////////////////////
// CMyEdit manages an edit control. The edit control is
// a child window of the main window.
class CMyEdit : public CEdit
{
public:
    CMyEdit();
    virtual ~CMyEdit() {}

protected:
    // Virtual functions that override base class functions
    virtual void OnAttach();
    virtual void PreCreate(CREATESTRUCT& cs);

private:
    CMyEdit(const CMyEdit&);                // Disable copy construction
    CMyEdit& operator = (const CMyEdit&);   // Disable assignment operator

    CFont m_font;
};

#endif // MYEDIT_H
