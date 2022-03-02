{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-chipmunk7-v0_3_0.flake = false;
  inputs.src-chipmunk7-v0_3_0.type = "github";
  inputs.src-chipmunk7-v0_3_0.owner = "avahe-kellenberger";
  inputs.src-chipmunk7-v0_3_0.repo = "nim-chipmunk";
  inputs.src-chipmunk7-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-chipmunk7-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chipmunk7-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk7-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk7-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}