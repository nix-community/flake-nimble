{
  description = ''a state-of-the-art multithreading runtime'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-weave-v0_2_0.flake = false;
  inputs.src-weave-v0_2_0.type = "github";
  inputs.src-weave-v0_2_0.owner = "mratsim";
  inputs.src-weave-v0_2_0.repo = "weave";
  inputs.src-weave-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-weave-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-weave-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weave-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}