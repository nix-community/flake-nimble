{
  description = ''Fonts, Typesetting and Rasterization.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-typography-0_3_0.flake = false;
  inputs.src-typography-0_3_0.type = "github";
  inputs.src-typography-0_3_0.owner = "treeform";
  inputs.src-typography-0_3_0.repo = "typography";
  inputs.src-typography-0_3_0.ref = "refs/tags/0.3.0";
  inputs.src-typography-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."flippy".type = "github";
  # inputs."flippy".owner = "riinr";
  # inputs."flippy".repo = "flake-nimble";
  # inputs."flippy".ref = "flake-pinning";
  # inputs."flippy".dir = "nimpkgs/f/flippy";
  # inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."vmath".type = "github";
  # inputs."vmath".owner = "riinr";
  # inputs."vmath".repo = "flake-nimble";
  # inputs."vmath".ref = "flake-pinning";
  # inputs."vmath".dir = "nimpkgs/v/vmath";
  # inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."print".type = "github";
  # inputs."print".owner = "riinr";
  # inputs."print".repo = "flake-nimble";
  # inputs."print".ref = "flake-pinning";
  # inputs."print".dir = "nimpkgs/p/print";
  # inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-typography-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typography-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}