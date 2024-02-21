enum 50100 "MNB Risk Score Cal. Method" implements "MNB IRiskMgt"
{
    Extensible = true;

    value(0; Item)
    {
        Caption = 'Item';
        Implementation = "MNB IRiskMgt" = "MNB IRiskMgtItem";
    }
    value(1; ItemCategory)
    {
        Caption = 'Item Category';
        Implementation = "MNB IRiskMgt" = "MNB IRiskMgtItemCat";
    }
}