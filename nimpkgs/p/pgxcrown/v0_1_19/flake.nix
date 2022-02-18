{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_1_19.flake = false;
  inputs.src-pgxcrown-v0_1_19.type = "github";
  inputs.src-pgxcrown-v0_1_19.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_19.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_19.ref = "refs/tags/v0.1.19";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_19, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}