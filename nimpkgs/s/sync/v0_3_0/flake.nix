{
  description = ''Useful synchronization primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sync-v0_3_0.flake = false;
  inputs.src-sync-v0_3_0.type = "github";
  inputs.src-sync-v0_3_0.owner = "planetis-m";
  inputs.src-sync-v0_3_0.repo = "sync";
  inputs.src-sync-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-sync-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sync-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sync-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sync-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}