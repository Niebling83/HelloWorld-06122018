pageextension 50101 "BAL Resource Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("BAL Resource Type"; "BAL Resource Type")
            {

            }
            field("BAL Quantity Per Day"; "BAL Quantity Per Day")
            {

            }
            group(Rooms)
            {
                field("BAL Maximiun Party Pants"; "BAL Maximiun Party Pants")
                {

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