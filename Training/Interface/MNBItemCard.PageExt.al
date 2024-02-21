pageextension 50101 "MNB Item Card" extends "Item Card"
{
    layout
    {
        addlast(content)
        {
            group(MNBRisk)
            {
                Caption = 'Risk';
                field("MNB Risk Score Cal. Method"; Rec."MNB Risk Score Cal. Method")
                {
                    ApplicationArea = All;
                    Caption = 'Risk Score Cal. Method';
                    ToolTip = 'Specifies how the risk is calculated.';
                }
                field("MNB Risk Probability"; Rec."MNB Risk Probability")
                {
                    ApplicationArea = All;
                    Caption = 'Risk Probability';
                    ToolTip = 'Specifies the probability of the risk.';
                }
                field("MNB Risk Impact"; Rec."MNB Risk Impact")
                {
                    ApplicationArea = All;
                    Caption = 'Risk Impact';
                    ToolTip = 'Specifies the impact of the risk.';
                }
                field("MNB Risk Score"; Rec."MNB Risk Score")
                {
                    ApplicationArea = All;
                    Caption = 'Risk Score';
                    ToolTip = 'Specifies the final risk score.';
                }
            }
        }
    }
}