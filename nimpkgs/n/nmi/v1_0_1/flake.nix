{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nmi-v1_0_1.flake = false;
  inputs.src-nmi-v1_0_1.type = "github";
  inputs.src-nmi-v1_0_1.owner = "jiro4989";
  inputs.src-nmi-v1_0_1.repo = "nmi";
  inputs.src-nmi-v1_0_1.ref = "refs/tags/v1.0.1";
  inputs.src-nmi-v1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nmi-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmi-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nmi-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}