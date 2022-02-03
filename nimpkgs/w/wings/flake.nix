{
  description = ''A simple cross language struct and enum file generator.'';
  
  inputs."wings-v0_0_1-alpha".url = "path:./v0_0_1-alpha";
  inputs."wings-v0_0_2-alpha".url = "path:./v0_0_2-alpha";
  inputs."wings-v0_0_3-alpha".url = "path:./v0_0_3-alpha";
  inputs."wings-v0_0_4-alpha".url = "path:./v0_0_4-alpha";
  inputs."wings-v0_0_5-alpha".url = "path:./v0_0_5-alpha";
  inputs."wings-v0_0_6-alpha".url = "path:./v0_0_6-alpha";
  inputs."wings-v0_0_7-alpha".url = "path:./v0_0_7-alpha";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}