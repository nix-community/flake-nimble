{
  description = ''csvql.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-csvql-3_0.flake = false;
  inputs.src-csvql-3_0.type = "github";
  inputs.src-csvql-3_0.owner = "Bennyelg";
  inputs.src-csvql-3_0.repo = "csvql";
  inputs.src-csvql-3_0.ref = "refs/tags/3.0";
  inputs.src-csvql-3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvql-3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvql-3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}