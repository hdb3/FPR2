module L2Event where
import L2

instance L2Message L2Event where
    msgType _ = L2EventType

data L2Event = L2EventIfUp | L2EventIfDown deriving (Show,Eq)
