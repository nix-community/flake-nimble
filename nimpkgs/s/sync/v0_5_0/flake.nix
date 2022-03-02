{
  description = ''Useful synchronization primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sync-v0_5_0.flake = false;
  inputs.src-sync-v0_5_0.type = "github";
  inputs.src-sync-v0_5_0.owner = "planetis-m";
  inputs.src-sync-v0_5_0.repo = "sync";
  inputs.src-sync-v0_5_0.ref = "refs/tags/v0.5.0";
  inputs.src-sync-v0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sync-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sync-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sync-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}