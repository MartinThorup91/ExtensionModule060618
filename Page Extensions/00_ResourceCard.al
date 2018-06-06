pageextension 123456700 "Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type";"CSD_Resource Type")
            {

            }
            field("CSD_Qty. per Day"; "CSD_Qty. per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group(Room)
            {
                Caption='Room';
                field(CSD_Maximum_Participants;CSD_Maximum_Participants)
                {
                    Visible=ShowRoom;
                }
            }
        }
    }
trigger OnOpenPage();
begin
    ShowRoom:=(Type=Type::Machine);
    CurrPage.Update(false);
end;
    
    var
        [InDataSet]

        ShowRoom : Boolean;
}