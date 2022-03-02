{
  description = ''A library for rendering text with paranim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-paratext-0_6_0.flake = false;
  inputs.src-paratext-0_6_0.type = "github";
  inputs.src-paratext-0_6_0.owner = "paranim";
  inputs.src-paratext-0_6_0.repo = "paratext";
  inputs.src-paratext-0_6_0.ref = "refs/tags/0.6.0";
  inputs.src-paratext-0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."paranim".type = "github";
  # inputs."paranim".owner = "riinr";
  # inputs."paranim".repo = "flake-nimble";
  # inputs."paranim".ref = "flake-pinning";
  # inputs."paranim".dir = "nimpkgs/p/paranim";
  # inputs."paranim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paranim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paratext-0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paratext-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paratext-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}