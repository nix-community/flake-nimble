{
  description = ''Password generator in Nim'';
  inputs."npg-master".url = "path:./master";
  inputs."npg-0_1_0".url = "path:./0_1_0";
  inputs."npg-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}