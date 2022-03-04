{
  description = ''micro and elegant web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-scorper-v1_0_17.flake = false;
  inputs.src-scorper-v1_0_17.type = "github";
  inputs.src-scorper-v1_0_17.owner = "bung87";
  inputs.src-scorper-v1_0_17.repo = "scorper";
  inputs.src-scorper-v1_0_17.ref = "refs/tags/v1.0.17";
  inputs.src-scorper-v1_0_17.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";
  inputs."result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."asynctest".type = "github";
  inputs."asynctest".owner = "riinr";
  inputs."asynctest".repo = "flake-nimble";
  inputs."asynctest".ref = "flake-pinning";
  inputs."asynctest".dir = "nimpkgs/a/asynctest";
  inputs."asynctest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scorper-v1_0_17, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scorper-v1_0_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scorper-v1_0_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}