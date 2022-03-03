{
  description = ''Nim bindings for Godot Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-godot-v0_4_0.flake = false;
  inputs.src-godot-v0_4_0.type = "github";
  inputs.src-godot-v0_4_0.owner = "pragmagic";
  inputs.src-godot-v0_4_0.repo = "godot-nim";
  inputs.src-godot-v0_4_0.ref = "refs/tags/v0.4.0";
  inputs.src-godot-v0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."compiler".type = "github";
  # inputs."compiler".owner = "riinr";
  # inputs."compiler".repo = "flake-nimble";
  # inputs."compiler".ref = "flake-pinning";
  # inputs."compiler".dir = "nimpkgs/c/compiler";
  # inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-godot-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-godot-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}