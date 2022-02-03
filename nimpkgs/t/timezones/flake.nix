{
  description = ''Timezone library compatible with the standard library. '';
  inputs."timezones-master".url = "path:./master";
  inputs."timezones-v0_2_0".url = "path:./v0_2_0";
  inputs."timezones-v0_2_1".url = "path:./v0_2_1";
  inputs."timezones-v0_3_0".url = "path:./v0_3_0";
  inputs."timezones-v0_4_0".url = "path:./v0_4_0";
  inputs."timezones-v0_4_1".url = "path:./v0_4_1";
  inputs."timezones-v0_4_2".url = "path:./v0_4_2";
  inputs."timezones-v0_4_3".url = "path:./v0_4_3";
  inputs."timezones-v0_5_0".url = "path:./v0_5_0";
  inputs."timezones-v0_5_1".url = "path:./v0_5_1";
  inputs."timezones-v0_5_2".url = "path:./v0_5_2";
  inputs."timezones-v0_5_3".url = "path:./v0_5_3";
  inputs."timezones-v0_5_4".url = "path:./v0_5_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}