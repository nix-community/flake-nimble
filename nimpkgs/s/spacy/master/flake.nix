{
  description = ''Spatial data structures for Nim.'';
  inputs.src-spacy-master.flake = false;
  inputs.src-spacy-master.type = "github";
  inputs.src-spacy-master.owner = "treeform";
  inputs.src-spacy-master.repo = "spacy";
  inputs.src-spacy-master.ref = "refs/heads/master";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."bumpy".type = "github";
  inputs."bumpy".owner = "riinr";
  inputs."bumpy".repo = "flake-nimble";
  inputs."bumpy".ref = "flake-pinning";
  inputs."bumpy".dir = "nimpkgs/b/bumpy";

  outputs = { self, nixpkgs, src-spacy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spacy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spacy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}