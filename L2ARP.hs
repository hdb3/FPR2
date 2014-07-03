module L2ARP where
import L2
import L3Address

instance L2Message L2ARP where
    msgType _ = L2PacketType

instance L2Packet L2ARP where
    pktType _ = L2PacketTypeARP

data L2ARP = L2ARPRequest L3Address | L2ARPResponse L3Address
-- note: 'MAC' address is not in the message body, it should be obtained from the envelope
