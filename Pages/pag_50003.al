page 50106 "Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "BAL Seminar Comment Line";
    AutoSplitKey = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {
                }
            }
        }
    }
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        SetupNewLine;
    end;
}