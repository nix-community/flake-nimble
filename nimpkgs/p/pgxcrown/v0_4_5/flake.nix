{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pgxcrown-v0_4_5.flake = false;
  inputs.src-pgxcrown-v0_4_5.type = "github";
  inputs.src-pgxcrown-v0_4_5.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_4_5.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_4_5.ref = "refs/tags/v0.4.5";
  inputs.src-pgxcrown-v0_4_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_4_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}