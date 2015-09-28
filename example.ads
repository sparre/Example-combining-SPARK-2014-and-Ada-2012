pragma SPARK_Mode (On);

package Example
  with SPARK_Mode
is
   procedure Increment (Item : in out Integer)
     with Pre => Item < Integer'Last;
end Example;
