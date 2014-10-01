 #define true	1                      /* mutulalEx.pml */
#define false	0
bool flag[2];
bool turn;
byte ncrit;
int count=0;
active [2] proctype user()
{
	assert(_pid==0 || _pid==1);
looper:	
	flag[_pid] = true;
	turn = _pid;
	(flag[1-_pid] == false || turn == 1-_pid);
	ncrit++;
	assert(ncrit==1);
	ncrit--;

	flag[_pid] = false;
	goto looper;

}
