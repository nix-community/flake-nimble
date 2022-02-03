{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs."latexdsl-master".url = "path:./master";
  inputs."latexdsl-v0_1_1".url = "path:./v0_1_1";
  inputs."latexdsl-v0_1_2".url = "path:./v0_1_2";
  inputs."latexdsl-v0_1_3".url = "path:./v0_1_3";
  inputs."latexdsl-v0_1_4".url = "path:./v0_1_4";
  inputs."latexdsl-v0_1_5".url = "path:./v0_1_5";
  inputs."latexdsl-v0_1_6".url = "path:./v0_1_6";
  inputs."latexdsl-v0_1_7".url = "path:./v0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}