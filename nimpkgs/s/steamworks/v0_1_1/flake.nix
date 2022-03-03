{
  description = ''Steamworks SDK API for shipping games on Steam.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-steamworks-v0_1_1.flake = false;
  inputs.src-steamworks-v0_1_1.type = "github";
  inputs.src-steamworks-v0_1_1.owner = "treeform";
  inputs.src-steamworks-v0_1_1.repo = "steamworks";
  inputs.src-steamworks-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-steamworks-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-steamworks-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-steamworks-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-steamworks-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}