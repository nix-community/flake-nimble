{
  description = ''A browser automation library written in Nim'';
  inputs."halonium-master".url = "path:./master";
  inputs."halonium-0_2_3".url = "path:./0_2_3";
  inputs."halonium-0_2_4".url = "path:./0_2_4";
  inputs."halonium-0_2_5".url = "path:./0_2_5";
  inputs."halonium-0_2_6".url = "path:./0_2_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}