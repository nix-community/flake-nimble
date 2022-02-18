{
  description = ''Nim wrappers for tree-sitter parser grammars'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-htsparse-0_1_7.flake = false;
  inputs.src-htsparse-0_1_7.type = "github";
  inputs.src-htsparse-0_1_7.owner = "haxscramper";
  inputs.src-htsparse-0_1_7.repo = "htsparse";
  inputs.src-htsparse-0_1_7.ref = "refs/tags/0.1.7";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, flakeNimbleLib, src-htsparse-0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htsparse-0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htsparse-0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}