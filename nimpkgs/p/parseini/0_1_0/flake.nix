{
  description = ''A high-performance ini parse library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-parseini-0_1_0.flake = false;
  inputs.src-parseini-0_1_0.type = "github";
  inputs.src-parseini-0_1_0.owner = "lihf8515";
  inputs.src-parseini-0_1_0.repo = "parseini";
  inputs.src-parseini-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-parseini-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parseini-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parseini-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parseini-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}