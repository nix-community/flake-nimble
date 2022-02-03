{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';
  inputs."analytics-master".url = "path:./master";
  inputs."analytics-v0_2_0".url = "path:./v0_2_0";
  inputs."analytics-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}