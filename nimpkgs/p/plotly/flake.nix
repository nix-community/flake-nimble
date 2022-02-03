{
  description = ''Nim interface to plotly'';
  inputs."plotly-master".url = "path:./master";
  inputs."plotly-v0_2_0".url = "path:./v0_2_0";
  inputs."plotly-v0_2_1".url = "path:./v0_2_1";
  inputs."plotly-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}