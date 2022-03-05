{
  description = ''Prebuilt components for the Fidget GUI library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-spinner-v0_1_2.flake = false;
  inputs.src-spinner-v0_1_2.type = "github";
  inputs.src-spinner-v0_1_2.owner = "tonogram";
  inputs.src-spinner-v0_1_2.repo = "spinner";
  inputs.src-spinner-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-spinner-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";
  inputs."fidget".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";
  inputs."gradient".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gradient".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spinner-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spinner-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}