#include	"inc\dictsys.h"
#include	"inc\keytable.h"
#include 	"inc\stdlib.h"
#include 	"inc\flash.h"

#define debug	"哎，少年不知愁滋味。游戏币CcCcCc"


FAR void GamBaYeEng(void);

void main(void)
{
	U16 bankbak,bnkNum;	

	SysLCDVoltage(30);
	if(!GuiQueryBox(1,0,"清Flash吗？"))
		ResetFlash();

	GuiMsgBox(debug,0);
	GetDataBankNumber(9,&bankbak);
	/*跑入引擎程序*/
	bnkNum = (0xf00000 + 0x80000) >> (U8)12 ;
	DataBankSwitch(9,4,bnkNum);

	SysIconBattery(2);
	GamBaYeEng();
	
	DataBankSwitch(9,4,bankbak);
	GuiMsgBox(debug,200);
	while(1);
	gamPause();
}

