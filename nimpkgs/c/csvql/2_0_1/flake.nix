{
  description = ''csvql.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-csvql-2_0_1.flake = false;
  inputs.src-csvql-2_0_1.type = "github";
  inputs.src-csvql-2_0_1.owner = "Bennyelg";
  inputs.src-csvql-2_0_1.repo = "csvql";
  inputs.src-csvql-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvql-2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvql-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}