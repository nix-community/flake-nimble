{
  description = ''A fixed point number library in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fpn-v0_0_1.flake = false;
  inputs.src-fpn-v0_0_1.type = "gitlab";
  inputs.src-fpn-v0_0_1.owner = "lbartoletti";
  inputs.src-fpn-v0_0_1.repo = "fpn";
  inputs.src-fpn-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-fpn-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fpn-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fpn-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fpn-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}