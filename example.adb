package body Example
  with SPARK_Mode => On
is
   procedure Increment (Item : in out Integer) is
   begin
--    if Item = Integer'Last then
--       raise Constraint_Error with "Violated precondition.";
--    else
         Item := Item + 1;
--    end if;
   end Increment;
end Example;
