
tableextension 50106 "WLD CustLedgerEntryExt" extends "Cust. Ledger Entry" //21
{
    fields
    {
        field(50100; "WLD Waldos Field"; Boolean)
        {
            Caption = 'Waldos Field';
            DataClassification = CustomerContent;
        }
    }
}

codeunit 50132 "FillFieldWhilePosting"
{
    //1-use event recorder

}