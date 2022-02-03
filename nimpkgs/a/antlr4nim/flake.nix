{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';
  inputs."antlr4nim-main".url = "path:./main";
  inputs."antlr4nim-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}