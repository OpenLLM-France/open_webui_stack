from portkey_ai import Portkey


portkey = Portkey(
    provider='openai', 
    custom_host="https://chat.ai.linagora.exaion.com/v1/",
    #virtual_key=virtual_key,
    Authorization= "sk-7Gqg14u-mGlX-egix20lgg"
)
from portkey_ai import Portkey


portkey = Portkey(
    #base_url='http://localhost:8787/v1/',
    api_key="Mg5032BkNmuRvmowMa0Ah23dMp/O",
    provider='openai', 
    custom_host="https://chat.ai.linagora.exaion.com/v1/",
    virtual_key="open-ai-virtual-80c358",
    Authorization= "sk-7Gqg14u-mGlX-egix20lgg"
)

portkey.models.list()