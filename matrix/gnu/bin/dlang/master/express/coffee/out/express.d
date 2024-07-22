module express;

import std.stdio;
void main() {
// false means "no", true means "yes"
bool existsCoffee = false;
bool existsTea = true;

writeln("There is warm drink: ",
existsCoffee || existsTea);
}
