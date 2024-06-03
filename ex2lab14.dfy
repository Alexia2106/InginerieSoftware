function F(x:int) : int{
    if  x < 10 then x else F(x-1)
}

/*La fiecare apel recursiv, valoarea lui x scade cu 1, x este un nr intreg si scade continuu, 
in cele din urma va deveni mai mic decat 10 => recursia se va termina. 
Expresia x functioneaza deoarece se micsoreaza la fiecare pas.*/


function G(x: int ): int {
 if 0 <= x then G(x - 2) else x
}
/* La fiecare apel recursiv, valoarea lui x scade cu 2. Deoarece x este un nr intreg, 
in cele din urma va deveni negativ => recursia se va termina.
Expresia x functioneaza deoarece 
se micsoreaza la fiecare pas cu 2 si in cele din urma va iesi din conditia 0 <= x */


function H(x: int ): int 
decreases x + 60
{
if x < -60 then x else H(x - 1)
}
/*  am adaugat conditia decreases x+60 pt a functiona programul */



/*(d) 
Functia scade fie x, fie y la fiecare apel recursiv, asigurand terminarea deoarece x si y sunt nr nat
*/
function I(x: nat , y: nat ): int {
 if x == 0 || y == 0 then 12
 else if x % 2 == y % 2 then
 I(x - 1, y)
 else
 I(x, y - 1) 
 }

/*(e) me
Functia scade fie x, fie y la fiecare apel recursiv, asigurand terminarea deoarece x si y sunt nr nat
function J(x: nat , y: nat ): int {
 if x == 0 then y
 else if y == 0 then
 J(x - 1, 3)
 else
 J(x, y - 1)
}

/*(f) merge
Functia scade x, y sau z la fiecare apel recursiv, asigurand terminarea deoarece sunt numere naturale.
*/
function K(x: nat , y: nat , z: nat ): int {
 if x < 10 || y < 5 then x + y
 else if z == 0 then
 K(x - 1, y, 5)
 else
 K(x, y - 1, z - 1)
}

/*(g) nu merge
Adaugarea scaderilor 100 - x ajuta verificatorul sa inteleaga ca functia se va incheia, deoarece 100 - x scade strict cu fiecare apel.
 */
 
function L(x: int ): int 
decreases 100 - x
{
 if x < 100 then L(x + 1) + 10 else x
}