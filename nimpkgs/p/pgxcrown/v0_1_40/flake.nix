{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_1_40.flake = false;
  inputs.src-pgxcrown-v0_1_40.type = "github";
  inputs.src-pgxcrown-v0_1_40.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_40.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_40.ref = "refs/tags/v0.1.40";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_1_40, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_40;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_1_40"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}