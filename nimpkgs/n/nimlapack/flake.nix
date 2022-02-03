{
  description = ''LAPACK bindings'';
  inputs."nimlapack-master".url = "path:./master";
  inputs."nimlapack-0_1_1".url = "path:./0_1_1";
  inputs."nimlapack-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}