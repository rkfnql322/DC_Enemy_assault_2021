﻿sleep 0.5;//서버 시작후 몇초뒤에 실행될지 결정
"Welcome to Enemy Assault 2021!" hintC [
    parseText 
	"
	<br/><t align='center' size='1'><a color='#ffd800'>Enemy Assault 2021</a></t>
	<br/><t align='center'></t>
	<br/><t align='center' size='1.5'>에너미 어썰트 2021에 오신걸 환영합니다</t>
	<br/><t align='center' size='1'>서로간의 예의는 지켜주시기 바랍니다.
	<br/><t align='center'></t>
	<br/><t align='center' size='1.5'>1킬당 3포인트를 획득할 수 있으며, 15분마다 15포인트를 획득할 수 있습니다.</t>
	<br/><t align='center' size='1.5'>얻은 포인트로는 차량을 스폰하거나 여타 서비스를 이용할 수 있습니다.</t>
	<br/><t align='center' size='1'> 인벤토리를 열었을 때 포인트를 확인할 수 있습니다.
	<br/><t align='center' size='1'></t>
	<br/><t align='right'><t size='1'>디스코드<a color='#ffd800' href='https://discord.gg/SbAzgYjWqV'> 접속하기</a>
	<br/>아르마 마이너갤 <a color='#008cff' href='http://gall.dcinside.com/mgallery/board/lists/?id=arma'> 접속하기</a></t></t><br/>
	<br/>
	<br/><t align='center' size='0.9'>분대창설, 가입은 U키, 그외 마우스휠을 굴려 메뉴를 사용</t>
	<br/><t align='center' size='0.9'><a color='#ffd800'>자동달리기 =키</a></t>
	<br/><t align='center' size='1.1'><a color='#ffd800'>!! 업데이트 로그를 반드시 확인하세요 !! (맵열어서 확인)</a></t>
	<br/><t align='center'></t>
	<br/>
	<t size='0.8'><t align='left'> 개발총괄 : Testify </a><br/>
	<t size='0.8'><t align='left'> Thanks to : DCinisde ArmA Gallery </a><br/>
	<t size='1'><a color='#ff0000'>(서버 공지사항 끄기 ‡ESC‡)</a></t></t><br/>"
];
hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
    0 = _this spawn {
        _this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
        hintSilent "";
    };
}];