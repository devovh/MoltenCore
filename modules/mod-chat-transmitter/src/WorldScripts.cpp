#include "ScriptMgr.h"
#include "ChatTransmitter.h"
#include "ScriptObject.h"

namespace ModChatTransmitter
{
    class WorldScripts : public WorldScript
    {
    public:
        WorldScripts() : WorldScript("ModChatTransmitterWorldScripts")
        { }

        void OnShutdown() override
        {
            ChatTransmitter::Instance().Stop();
        }

        void OnUpdate(uint32) override
        {
            ChatTransmitter::Instance().Update();
        }

        void OnAfterConfigLoad(bool reload) override
        {
            if (!reload)
            {
                return;
            }

            ChatTransmitter::Instance().Stop();
            ChatTransmitter::Instance().Start();
        }
    };

    void AddWorldScripts()
    {
        new WorldScripts();
    }
}
