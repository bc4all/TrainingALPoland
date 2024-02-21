pageextension 50102 "MNB Item Category Card" extends "Item Category Card"
{
    layout
    {
        addlast(General)
        {
            field("MNB Risk Impact"; Rec."MNB Risk Impact")
            {
                ApplicationArea = All;
                Caption = 'Risk Impact';
                ToolTip = 'Specifies the risk impact of the item category.';
            }
        }
    }
}