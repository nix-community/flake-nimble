{
  description = ''A port of ggplot2 for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ggplotnim-v0_1_3.flake = false;
  inputs.src-ggplotnim-v0_1_3.type = "github";
  inputs.src-ggplotnim-v0_1_3.owner = "Vindaar";
  inputs.src-ggplotnim-v0_1_3.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_1_3.ref = "refs/tags/v0.1.3";
  inputs.src-ggplotnim-v0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/vindaar/ginger".type = "github";
  inputs."https://github.com/vindaar/ginger".owner = "riinr";
  inputs."https://github.com/vindaar/ginger".repo = "flake-nimble";
  inputs."https://github.com/vindaar/ginger".ref = "flake-pinning";
  inputs."https://github.com/vindaar/ginger".dir = "nimpkgs/h/https://github.com/vindaar/ginger";
  inputs."https://github.com/vindaar/ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."persvector".type = "github";
  inputs."persvector".owner = "riinr";
  inputs."persvector".repo = "flake-nimble";
  inputs."persvector".ref = "flake-pinning";
  inputs."persvector".dir = "nimpkgs/p/persvector";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ggplotnim-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}