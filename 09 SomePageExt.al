pageextension 50100 SomePageExt extends "Customer List" //22
{
    layout
    {
        addfirst(Content)
        {
            field("Telex No."; "Telex No.")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addfirst("&Customer")
        {
            action(SomeAction)
            {
                RunObject = page "_Empl. Absences by Cat. Matrix";
            }
        }
    }
}