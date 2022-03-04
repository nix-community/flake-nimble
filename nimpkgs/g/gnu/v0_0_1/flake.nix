{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gnu-v0_0_1.flake = false;
  inputs.src-gnu-v0_0_1.type = "github";
  inputs.src-gnu-v0_0_1.owner = "tonogram";
  inputs.src-gnu-v0_0_1.repo = "gnu";
  inputs.src-gnu-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-gnu-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."godot".type = "github";
  inputs."godot".owner = "riinr";
  inputs."godot".repo = "flake-nimble";
  inputs."godot".ref = "flake-pinning";
  inputs."godot".dir = "nimpkgs/g/godot";
  inputs."godot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."godot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gnu-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnu-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gnu-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}