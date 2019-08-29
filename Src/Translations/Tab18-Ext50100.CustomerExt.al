tableextension 50100 "CustomerExt" extends Customer //18
{
    fields
    {
        field(50100; "waldoJust Some field"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Just Some Table"."No.";
            caption = 'Just Some Field';
        }
        field(50101; "waldoJust Some other field"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Just Some Table"."No.";
            caption = 'Just Some other Field';
        }

        field(50102; "waldoJust third field"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Just Some Table"."No.";
            caption = 'Just a third field';
        }

        field(50103; "waldoA Fourth field"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'Fourth field';
        }

        field(50104; "waldoMy Fifth field"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'My Fifth field';
        }
    }

    procedure CreateAndShowNewInvoice(MyString: Text)
    begin
        rec.CreateAndShowNewInvoice();

    end;

    procedure OverloadedStandardMethod()
    begin
        rec.CreateAndShowNewInvoice('waldo');

        rec.City := JustALabel;
    end;

    procedure ControlPrognoses()
    var
        waldoControlPrognosesMeth: Codeunit "waldoControlPrognoses Meth";
    begin
        waldoControlPrognosesMeth.ControlPrognoses(Rec);
    end;

    var
        JustALabel: label 'Just a label', Comment = 'Used in code', MaxLength = 30, Locked = false;
        JustALabel2: Label 'Just a label 2';

        JustALabel3: Label 'Just a label 3';
        JustALabel4: Label 'Just a label 4', Comment = 'Take this into account', MaxLength = 111, Locked = true;
}
