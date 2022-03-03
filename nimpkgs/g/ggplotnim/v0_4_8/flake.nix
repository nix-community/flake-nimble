{
  description = ''A port of ggplot2 for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ggplotnim-v0_4_8.flake = false;
  inputs.src-ggplotnim-v0_4_8.type = "github";
  inputs.src-ggplotnim-v0_4_8.owner = "Vindaar";
  inputs.src-ggplotnim-v0_4_8.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_4_8.ref = "refs/tags/v0.4.8";
  inputs.src-ggplotnim-v0_4_8.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."datamancer".type = "github";
  # inputs."datamancer".owner = "riinr";
  # inputs."datamancer".repo = "flake-nimble";
  # inputs."datamancer".ref = "flake-pinning";
  # inputs."datamancer".dir = "nimpkgs/d/datamancer";
  # inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."shell".type = "github";
  # inputs."shell".owner = "riinr";
  # inputs."shell".repo = "flake-nimble";
  # inputs."shell".ref = "flake-pinning";
  # inputs."shell".dir = "nimpkgs/s/shell";
  # inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."webview".type = "github";
  # inputs."webview".owner = "riinr";
  # inputs."webview".repo = "flake-nimble";
  # inputs."webview".ref = "flake-pinning";
  # inputs."webview".dir = "nimpkgs/w/webview";
  # inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/scinim/scinim".type = "github";
  # inputs."https://github.com/scinim/scinim".owner = "riinr";
  # inputs."https://github.com/scinim/scinim".repo = "flake-nimble";
  # inputs."https://github.com/scinim/scinim".ref = "flake-pinning";
  # inputs."https://github.com/scinim/scinim".dir = "nimpkgs/h/https://github.com/scinim/scinim";
  # inputs."https://github.com/scinim/scinim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/scinim/scinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ggplotnim-v0_4_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}