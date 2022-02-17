{
  description = ''Nim wrappers for tree-sitter parser grammars'';
  inputs.src-htsparse-master.flake = false;
  inputs.src-htsparse-master.type = "github";
  inputs.src-htsparse-master.owner = "haxscramper";
  inputs.src-htsparse-master.repo = "htsparse";
  inputs.src-htsparse-master.ref = "refs/heads/master";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-htsparse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htsparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htsparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}