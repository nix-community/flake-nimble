{
  description = ''A high-performance ini parse library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-parseini-0_2_0.flake = false;
  inputs.src-parseini-0_2_0.type = "github";
  inputs.src-parseini-0_2_0.owner = "lihf8515";
  inputs.src-parseini-0_2_0.repo = "parseini";
  inputs.src-parseini-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parseini-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parseini-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parseini-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}