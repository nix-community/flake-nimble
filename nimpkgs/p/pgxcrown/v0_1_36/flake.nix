{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pgxcrown-v0_1_36.flake = false;
  inputs.src-pgxcrown-v0_1_36.type = "github";
  inputs.src-pgxcrown-v0_1_36.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_36.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_36.ref = "refs/tags/v0.1.36";
  inputs.src-pgxcrown-v0_1_36.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_36, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_36;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_36"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}