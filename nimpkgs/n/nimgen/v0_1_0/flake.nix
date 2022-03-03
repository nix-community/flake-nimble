{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimgen-v0_1_0.flake = false;
  inputs.src-nimgen-v0_1_0.type = "github";
  inputs.src-nimgen-v0_1_0.owner = "genotrance";
  inputs.src-nimgen-v0_1_0.repo = "nimgen";
  inputs.src-nimgen-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimgen-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."c2nim".type = "github";
  # inputs."c2nim".owner = "riinr";
  # inputs."c2nim".repo = "flake-nimble";
  # inputs."c2nim".ref = "flake-pinning";
  # inputs."c2nim".dir = "nimpkgs/c/c2nim";
  # inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgen-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgen-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}