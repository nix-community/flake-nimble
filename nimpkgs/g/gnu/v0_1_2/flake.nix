{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gnu-v0_1_2.flake = false;
  inputs.src-gnu-v0_1_2.type = "github";
  inputs.src-gnu-v0_1_2.owner = "tonogram";
  inputs.src-gnu-v0_1_2.repo = "gnu";
  inputs.src-gnu-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."godot".type = "github";
  inputs."godot".owner = "riinr";
  inputs."godot".repo = "flake-nimble";
  inputs."godot".ref = "flake-pinning";
  inputs."godot".dir = "nimpkgs/g/godot";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gnu-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnu-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gnu-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}