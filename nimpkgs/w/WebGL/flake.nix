{
  description = ''Experimental wrapper to webgl for Nim'';
  inputs."webgl-master".url = "path:./master";
  inputs."webgl-0_1_0".url = "path:./0_1_0";
  inputs."webgl-0_1_2".url = "path:./0_1_2";
  inputs."webgl-0_2_0".url = "path:./0_2_0";
  inputs."webgl-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}