{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pgxcrown-v0_4_4.flake = false;
  inputs.src-pgxcrown-v0_4_4.type = "github";
  inputs.src-pgxcrown-v0_4_4.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_4_4.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_4_4.ref = "refs/tags/v0.4.4";
  inputs.src-pgxcrown-v0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}