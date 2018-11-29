tableextension 50100 Resource_Extension extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Internal","External";
            Caption = 'Resource Type';
            OptionCaption = 'Internal,External';

        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = ' Quantity Per Day';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }

    }

    var
        myInt: Integer;
}