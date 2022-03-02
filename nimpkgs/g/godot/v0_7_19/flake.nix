{
  description = ''Nim bindings for Godot Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-godot-v0_7_19.flake = false;
  inputs.src-godot-v0_7_19.type = "github";
  inputs.src-godot-v0_7_19.owner = "pragmagic";
  inputs.src-godot-v0_7_19.repo = "godot-nim";
  inputs.src-godot-v0_7_19.ref = "refs/tags/v0.7.19";
  inputs.src-godot-v0_7_19.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."compiler".type = "github";
  # inputs."compiler".owner = "riinr";
  # inputs."compiler".repo = "flake-nimble";
  # inputs."compiler".ref = "flake-pinning";
  # inputs."compiler".dir = "nimpkgs/c/compiler";
  # inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-godot-v0_7_19, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_7_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-godot-v0_7_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}