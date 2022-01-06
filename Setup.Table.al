table 50110 "PTE Setup"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
        }
        field(2; "Enabled"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

}