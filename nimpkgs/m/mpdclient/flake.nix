{
  description = ''MPD client library'';
  inputs."mpdclient-master".url = "path:./master";
  inputs."mpdclient-v0_1_0".url = "path:./v0_1_0";
  inputs."mpdclient-v0_1_1".url = "path:./v0_1_1";
  inputs."mpdclient-v0_1_2".url = "path:./v0_1_2";
  inputs."mpdclient-v0_1_3".url = "path:./v0_1_3";
  inputs."mpdclient-v0_1_4".url = "path:./v0_1_4";
  inputs."mpdclient-v0_1_5".url = "path:./v0_1_5";
  inputs."mpdclient-v0_1_6".url = "path:./v0_1_6";
  inputs."mpdclient-v0_1_7".url = "path:./v0_1_7";
  inputs."mpdclient-v0_2_0".url = "path:./v0_2_0";
  inputs."mpdclient-v0_2_1".url = "path:./v0_2_1";
  inputs."mpdclient-v0_2_2".url = "path:./v0_2_2";
  inputs."mpdclient-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}