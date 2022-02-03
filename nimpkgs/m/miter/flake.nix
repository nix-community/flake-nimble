{
  description = ''Ratio calculator on your terminal'';
  inputs."miter-master".url = "path:./master";
  inputs."miter-0_1_0".url = "path:./0_1_0";
  inputs."miter-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}