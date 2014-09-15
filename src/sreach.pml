#define N 20
init {	
	chan dummy = [N] of { byte };
	do
	:: dummy!85
	:: dummy!170
	od
}
