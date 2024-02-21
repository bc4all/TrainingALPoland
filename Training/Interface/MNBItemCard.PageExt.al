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

                    trigger OnValidate()
                    begin
                        CurrPage.Update(true);
                    end;
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
                    Editable = RiskImpactEditable;
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

    trigger OnAfterGetCurrRecord()
    begin
        SetRiskImpactEditable();
    end;

    local procedure SetRiskImpactEditable()
    var
        IRiskMgt: Interface "MNB IRiskMgt";
    begin
        IRiskMgt := Rec."MNB Risk Score Cal. Method";
        RiskImpactEditable := IRiskMgt.SetRiskImpEditable();
    end;

    var
        RiskImpactEditable: Boolean;
}