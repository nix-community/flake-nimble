{
  description = ''a state-of-the-art multithreading runtime'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-weave-v0_3_0.flake = false;
  inputs.src-weave-v0_3_0.type = "github";
  inputs.src-weave-v0_3_0.owner = "mratsim";
  inputs.src-weave-v0_3_0.repo = "weave";
  inputs.src-weave-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-weave-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."synthesis".type = "github";
  inputs."synthesis".owner = "riinr";
  inputs."synthesis".repo = "flake-nimble";
  inputs."synthesis".ref = "flake-pinning";
  inputs."synthesis".dir = "nimpkgs/s/synthesis";
  inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-weave-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weave-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}