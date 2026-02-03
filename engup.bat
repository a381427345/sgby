call set65.bat
call build.bat
call obj.bat

copy obj\*.* E:\work\EleDict\DownLoad\A100\baye
copy obj\*.* E:\work\EleDict\DownLoad\3288\baye

cd E:\work\EleDict\DownLoad\A100\
call makeby.bat
E:\工具\Ue\Uedit32.exe err.txt
E:\工具\Ue\Uedit32.exe test.map
move baye.eng E:\gamEngine\bayeEng\make

cd E:\work\EleDict\DownLoad\3288\
call makeby.bat
E:\工具\Ue\Uedit32.exe err.txt
E:\工具\Ue\Uedit32.exe test.map
move baye3288.eng E:\gamEngine\bayeEng\make

cd E:\gamEngine\bayeEng\make
copy baye3288.eng baye5988.eng
E:\工具\Ue\Uedit32.exe baye5988.eng

