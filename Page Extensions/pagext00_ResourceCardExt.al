pageextension 50100 "BAL Resource Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("BAL Resource Type"; "BAL Resource Type")
            {
                Caption = 'Resource Type';
            }
            field("BAL Quantity Per Day"; "BAL Quantity Per Day")
            {
                Caption = 'Quantity Per Day';
            }
        }
        addafter("Personal Data")
        {
            group("Rooms")
            {
                Visible = ShowRoom;
                Caption = 'Rooms';
                field("BAL Maximiun Party Pants"; "BAL Maximiun Party Pants")
                {
                    Caption = 'Maximiun Party Pants';
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        ShowRoom := Type = type::Machine;
    end;

    var
        [InDataSet]
        ShowRoom: Boolean;


}