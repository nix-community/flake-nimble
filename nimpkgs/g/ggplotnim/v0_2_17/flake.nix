{
  description = ''A port of ggplot2 for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ggplotnim-v0_2_17.flake = false;
  inputs.src-ggplotnim-v0_2_17.type = "github";
  inputs.src-ggplotnim-v0_2_17.owner = "Vindaar";
  inputs.src-ggplotnim-v0_2_17.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_2_17.ref = "refs/tags/v0.2.17";
  inputs.src-ggplotnim-v0_2_17.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/vindaar/seqmath".type = "github";
  # inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  # inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  # inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  # inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";
  # inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ginger".type = "github";
  # inputs."ginger".owner = "riinr";
  # inputs."ginger".repo = "flake-nimble";
  # inputs."ginger".ref = "flake-pinning";
  # inputs."ginger".dir = "nimpkgs/g/ginger";
  # inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."persvector".type = "github";
  # inputs."persvector".owner = "riinr";
  # inputs."persvector".repo = "flake-nimble";
  # inputs."persvector".ref = "flake-pinning";
  # inputs."persvector".dir = "nimpkgs/p/persvector";
  # inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."shell".type = "github";
  # inputs."shell".owner = "riinr";
  # inputs."shell".repo = "flake-nimble";
  # inputs."shell".ref = "flake-pinning";
  # inputs."shell".dir = "nimpkgs/s/shell";
  # inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ggplotnim-v0_2_17, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_2_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_2_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}