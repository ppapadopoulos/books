BEGIN { printit=0; ISBN=0; author=0 }
/Lookup\/Book/ {printit=1;}
/<ul/ {if (printit == 1) { printit=0; } }
{if (printit == 1) { printf "%s\t",$0 } }
END {print}
