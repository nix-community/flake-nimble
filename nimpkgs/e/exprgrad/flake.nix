{
  description = ''An experimental deep learning framework'';
  inputs."exprgrad-main".url = "path:./main";
  inputs."exprgrad-v0_0_1".url = "path:./v0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}