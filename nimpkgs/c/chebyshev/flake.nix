{
  description = ''Chebyshev approximation.'';
  inputs."chebyshev-master".url = "path:./master";
  inputs."chebyshev-v0_0_0".url = "path:./v0_0_0";
  inputs."chebyshev-v0_1_0".url = "path:./v0_1_0";
  inputs."chebyshev-v0_2_0".url = "path:./v0_2_0";
  inputs."chebyshev-v0_2_1".url = "path:./v0_2_1";
  inputs."chebyshev-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}