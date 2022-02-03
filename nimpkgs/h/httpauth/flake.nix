{
  description = ''HTTP Authentication and Authorization'';
  inputs."httpauth-master".url = "path:./master";
  inputs."httpauth-0_1_0".url = "path:./0_1_0";
  inputs."httpauth-0_1_2".url = "path:./0_1_2";
  inputs."httpauth-0_1_3".url = "path:./0_1_3";
  inputs."httpauth-0_2_0".url = "path:./0_2_0";
  inputs."httpauth-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}