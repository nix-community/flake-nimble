{
  description = ''Nim wrappers for tree-sitter parser grammars'';
  inputs.src-htsparse-0_1_11.flake = false;
  inputs.src-htsparse-0_1_11.type = "github";
  inputs.src-htsparse-0_1_11.owner = "haxscramper";
  inputs.src-htsparse-0_1_11.repo = "htsparse";
  inputs.src-htsparse-0_1_11.ref = "refs/tags/0.1.11";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-htsparse-0_1_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htsparse-0_1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htsparse-0_1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}