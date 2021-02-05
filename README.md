#### MODULE NAME
       MUX4_32

#### DEPENDENCIES
       MUX4

#### INPUTS
Name | Size(Bits)
-----|------------
A   |     32     
B   |     32     
C   |     32     
D   |     32     
S   |     2      

#### OUTPUTS
Name | Size(Bits)
-----|------------
Y   |     32     

#### DESCRIPTION
       Four-input multiplexor with 32-bit inputs.  Sets output Y equal to:

       A if S = 00

       B if S = 01

       C if S = 10

       D if S = 11

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
