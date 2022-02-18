{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pgxcrown-v0_3_4.flake = false;
  inputs.src-pgxcrown-v0_3_4.type = "github";
  inputs.src-pgxcrown-v0_3_4.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_4.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-v0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}