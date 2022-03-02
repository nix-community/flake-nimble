{
  description = ''a state-of-the-art multithreading runtime'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-weave-v0_1_0.flake = false;
  inputs.src-weave-v0_1_0.type = "github";
  inputs.src-weave-v0_1_0.owner = "mratsim";
  inputs.src-weave-v0_1_0.repo = "weave";
  inputs.src-weave-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-weave-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-weave-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weave-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}