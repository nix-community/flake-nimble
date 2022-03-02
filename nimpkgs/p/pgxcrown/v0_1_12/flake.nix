{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pgxcrown-v0_1_12.flake = false;
  inputs.src-pgxcrown-v0_1_12.type = "github";
  inputs.src-pgxcrown-v0_1_12.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_12.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_12.ref = "refs/tags/v0.1.12";
  inputs.src-pgxcrown-v0_1_12.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}