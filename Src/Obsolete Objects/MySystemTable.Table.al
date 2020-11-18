table 50113 "WLD MySystemTable"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; C; Integer)
        {
            Caption = 'C';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "C")
        {
            Clustered = true;
        }
    }

    [Obsolete('This will be replaced by slapping to your head')]
    procedure FormatDrive()
    var
        FormatDriveMeth: Codeunit "WLD FormatDrive Meth";
        Cust: Record Customer;
    begin
        FormatDriveMeth.FormateDrive(Cust);
    end;

}