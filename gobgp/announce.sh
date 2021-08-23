self=192.168.22.1

# Define BGP attributes
attr_v4="
  -a ipv4 \
  identifier 1 \
  origin igp \
  aspath 1,2,3 \
  nexthop $self \
  med 100 \
  local-pref 100 \
  community 1:1,2:2 \
  aigp metric 10 \
  large-community 111:111:111,222:222:222
"

# Populate prefixes
gobgp global rib add 192.168.100.1/32 $attr_v4