{
  description = ''nimaterial is a CSS output library based on material design.'';
  inputs."nimaterial-master".url = "path:./master";
  inputs."nimaterial-ver_0_3_0".url = "path:./ver_0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}