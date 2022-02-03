{
  description = ''Nim wrappers for tree-sitter parser grammars'';
  inputs.src-htsparse-0_1_3.flake = false;
  inputs.src-htsparse-0_1_3.type = "github";
  inputs.src-htsparse-0_1_3.owner = "haxscramper";
  inputs.src-htsparse-0_1_3.repo = "htsparse";
  inputs.src-htsparse-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hparse".url = "path:../../../h/hparse";
  inputs."hparse".type = "github";
  inputs."hparse".owner = "riinr";
  inputs."hparse".repo = "flake-nimble";
  inputs."hparse".ref = "flake-pinning";
  inputs."hparse".dir = "nimpkgs/h/hparse";

  outputs = { self, nixpkgs, src-htsparse-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htsparse-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htsparse-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}