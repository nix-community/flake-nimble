{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_3_9.flake = false;
  inputs.src-pgxcrown-v0_3_9.type = "github";
  inputs.src-pgxcrown-v0_3_9.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_9.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_3_9.ref = "refs/tags/v0.3.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_3_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_3_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_3_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}