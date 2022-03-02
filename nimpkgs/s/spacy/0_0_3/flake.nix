{
  description = ''Spatial data structures for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-spacy-0_0_3.flake = false;
  inputs.src-spacy-0_0_3.type = "github";
  inputs.src-spacy-0_0_3.owner = "treeform";
  inputs.src-spacy-0_0_3.repo = "spacy";
  inputs.src-spacy-0_0_3.ref = "refs/tags/0.0.3";
  inputs.src-spacy-0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."vmath".type = "github";
  # inputs."vmath".owner = "riinr";
  # inputs."vmath".repo = "flake-nimble";
  # inputs."vmath".ref = "flake-pinning";
  # inputs."vmath".dir = "nimpkgs/v/vmath";
  # inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."bumpy".type = "github";
  # inputs."bumpy".owner = "riinr";
  # inputs."bumpy".repo = "flake-nimble";
  # inputs."bumpy".ref = "flake-pinning";
  # inputs."bumpy".dir = "nimpkgs/b/bumpy";
  # inputs."bumpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bumpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spacy-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spacy-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spacy-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}