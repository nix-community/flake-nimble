{
  description = ''Color Library'';
  inputs."Palette-develop".url = "path:./develop";
  inputs."Palette-master".url = "path:./master";
  inputs."Palette-0_1_0".url = "path:./0_1_0";
  inputs."Palette-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}