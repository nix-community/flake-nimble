{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pgxcrown-v0_1_38.flake = false;
  inputs.src-pgxcrown-v0_1_38.type = "github";
  inputs.src-pgxcrown-v0_1_38.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_38.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_38.ref = "refs/tags/v0.1.38";
  inputs.src-pgxcrown-v0_1_38.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_38, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_38;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_38"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}