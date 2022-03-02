{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pgxcrown-v0_1_32.flake = false;
  inputs.src-pgxcrown-v0_1_32.type = "github";
  inputs.src-pgxcrown-v0_1_32.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_32.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_32.ref = "refs/tags/v0.1.32";
  inputs.src-pgxcrown-v0_1_32.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_32, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_32;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_32"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}