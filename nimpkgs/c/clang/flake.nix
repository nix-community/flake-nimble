{
  description = ''Wrapper for libclang C headers'';
  inputs."clang-develop".url = "path:./develop";
  inputs."clang-v0_59".url = "path:./v0_59";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}