module L2 where

{-
  Define the L2 message structure and class
-}

data L2MessageType = L2EventType | L2PacketType deriving (Show,Eq)
class L2Message m where
  msgType :: m -> L2MessageType

data L2PacketType = L2PacketTypeDVP | L2PacketTypeARP | L2PacketTypeL3
class L2Packet m where
  pktType :: m -> L2PacketType

