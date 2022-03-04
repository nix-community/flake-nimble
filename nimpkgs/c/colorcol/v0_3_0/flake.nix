{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-colorcol-v0_3_0.flake = false;
  inputs.src-colorcol-v0_3_0.type = "github";
  inputs.src-colorcol-v0_3_0.owner = "SolitudeSF";
  inputs.src-colorcol-v0_3_0.repo = "colorcol";
  inputs.src-colorcol-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-colorcol-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-colorcol-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorcol-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}