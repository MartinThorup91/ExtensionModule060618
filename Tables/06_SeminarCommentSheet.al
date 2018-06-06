page 123456706 "Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption='Seminar Comment Sheet';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    
                }
                field(Code;Code)
                {
                    Visible=false;
                }
                field(Comment;Comment)
                {
                    
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}