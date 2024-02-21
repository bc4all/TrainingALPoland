codeunit 50100 "MNB ICalMethodItem" implements "MNB IRiskScoreCalMethod"
{
    procedure CalculateRiskScore(var Item: Record Item)
    begin
        Item."MNB Risk Score" := Item."MNB Risk Impact" * Item."MNB Risk Probability";
    end;
}