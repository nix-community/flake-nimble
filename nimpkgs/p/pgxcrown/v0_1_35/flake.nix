{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_1_35.flake = false;
  inputs.src-pgxcrown-v0_1_35.type = "github";
  inputs.src-pgxcrown-v0_1_35.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_35.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_35.ref = "refs/tags/v0.1.35";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_35, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_35;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_35"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}