private ["_state", "_victimStats"];
_state  = animationState _this;
_victimStats = [
  "civillying01",
  "civilsitting",
  "civilsitting01",
  "civilsitting02",
  "civilsitting03",
  "amovpercmstpssurwnondnon",
  "adthppnemstpsraswpstdnon_2",
  "adthpercmstpslowwrfldnon_4",
  "amovpercmwlkssurwnondf_forgoten",
  "actspercmstpsnonwrfldnon_interrogate02_forgoten"
];

if (_state in _victimStats) then
{
  true
}
else
{
  false
};
