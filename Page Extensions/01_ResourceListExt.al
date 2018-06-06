pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Maximum Participants"; CSD_Maximum_Participants)
            {
                Visible = ShowRoom;
            }
        }
    }

    var
        [InDataSet]
        ShowRoom: Boolean;
        [InDataSet]
        Showtype: Boolean;

    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowRoom := (GetFilter(Type) = format(Type::machine));
        FilterGroup(0);
    end;
}