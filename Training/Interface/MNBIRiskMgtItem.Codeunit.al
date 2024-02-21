codeunit 50100 "MNB IRiskMgtItem" implements "MNB IRiskMgt"
{
    procedure CalculateRiskScore(var Item: Record Item)
    begin
        Item."MNB Risk Score" := Item."MNB Risk Impact" * Item."MNB Risk Probability";
    end;

    procedure SetRiskImpEditable(): Boolean
    begin
        exit(true);
    end;
}