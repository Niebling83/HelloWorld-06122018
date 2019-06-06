page 50102 "Seminar List"
{
Caption='Seminar List';
PageType = List;
SourceTable = "BAL Seminar";
Editable = false;
CardPageId = Seminar;
UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                Field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                Field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                                    RunObject=page "Seminar Comment Sheet";
                                    RunPageLink = "Table Name"=const(Seminar),"No."=field("No.");
                    Image = Comment;
                }
            }
        }
    }

    var
        myInt: Integer;
}