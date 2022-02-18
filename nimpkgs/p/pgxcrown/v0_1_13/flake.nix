{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_1_13.flake = false;
  inputs.src-pgxcrown-v0_1_13.type = "github";
  inputs.src-pgxcrown-v0_1_13.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_13.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_13.ref = "refs/tags/v0.1.13";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}