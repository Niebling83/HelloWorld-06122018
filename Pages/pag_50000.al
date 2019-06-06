page 50100 "BAL Recource Setup"
{
    Editable = true;
    PageType = Card;
    Caption='Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "BAL Resource Setup";
    

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'Number series';
                field("No. Series"; "No. Series")
                {
                    Caption = 'Number Series';
                    ApplicationArea = All;
                }
                field("No. Series2"; "No. Series2")
                {
                    Caption = 'Number Serie II';
                    ApplicationArea = All;
                }
                field("No. Series Posted"; "No. Series Posted")
                {
                    Caption = 'Number Serie Posted';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage();
        begin
            if not get then begin
                init;
                insert;
            end;
        end;
}