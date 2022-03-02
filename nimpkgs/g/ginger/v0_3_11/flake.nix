{
  description = ''A Grid (R) like package in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ginger-v0_3_11.flake = false;
  inputs.src-ginger-v0_3_11.type = "github";
  inputs.src-ginger-v0_3_11.owner = "Vindaar";
  inputs.src-ginger-v0_3_11.repo = "ginger";
  inputs.src-ginger-v0_3_11.ref = "refs/tags/v0.3.11";
  inputs.src-ginger-v0_3_11.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/vindaar/seqmath".type = "github";
  # inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  # inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  # inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  # inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";
  # inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cairo".type = "github";
  # inputs."cairo".owner = "riinr";
  # inputs."cairo".repo = "flake-nimble";
  # inputs."cairo".ref = "flake-pinning";
  # inputs."cairo".dir = "nimpkgs/c/cairo";
  # inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/vindaar/latexdsl".type = "github";
  # inputs."https://github.com/vindaar/latexdsl".owner = "riinr";
  # inputs."https://github.com/vindaar/latexdsl".repo = "flake-nimble";
  # inputs."https://github.com/vindaar/latexdsl".ref = "flake-pinning";
  # inputs."https://github.com/vindaar/latexdsl".dir = "nimpkgs/h/https://github.com/vindaar/latexdsl";
  # inputs."https://github.com/vindaar/latexdsl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/vindaar/latexdsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."shell".type = "github";
  # inputs."shell".owner = "riinr";
  # inputs."shell".repo = "flake-nimble";
  # inputs."shell".ref = "flake-pinning";
  # inputs."shell".dir = "nimpkgs/s/shell";
  # inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ginger-v0_3_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ginger-v0_3_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ginger-v0_3_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}