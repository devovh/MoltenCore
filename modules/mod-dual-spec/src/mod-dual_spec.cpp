#include "ScriptMgr.h"
#include "Player.h"
#include "ScriptObject.h"

class StartDualSpec : public PlayerScript
{
public:
	StartDualSpec() : PlayerScript("StartDualSpec") { }

	ObjectGuid guid;
	
	void OnCreate(Player* player)
	{
		guid = player->GetGUID();
	}
	
	void OnLogin(Player* player)
	{
		if (player->GetGUID() != guid)
			return;
			
		player->CastSpell(player, 63680, true, NULL, NULL, player->GetGUID());
		player->CastSpell(player, 63624, true, NULL, NULL, player->GetGUID());
		player->UpdateSpecCount(2);
	}
};

void AddStartDualSpec() 
{
	new StartDualSpec();
}
