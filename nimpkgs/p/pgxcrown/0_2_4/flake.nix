{
  description = ''Build Postgres extensions in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pgxcrown-0_2_4.flake = false;
  inputs.src-pgxcrown-0_2_4.type = "github";
  inputs.src-pgxcrown-0_2_4.owner = "luisacosta828";
  inputs.src-pgxcrown-0_2_4.repo = "pgxcrown";
  inputs.src-pgxcrown-0_2_4.ref = "refs/tags/0.2.4";
  inputs.src-pgxcrown-0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pgxcrown-0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}