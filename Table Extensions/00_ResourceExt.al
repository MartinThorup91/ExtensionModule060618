tableextension 123456700 "Resource Extension" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin;
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456700;"CSD_Resource Type";Option)
        {
            Caption='Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(123456701;CSD_Maximum_Participants;Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456702;"CSD_Qty. per Day";Integer)
        {
            Caption = 'Qty. per Day';
        }
    }
    
    var
        myInt : Integer;
}