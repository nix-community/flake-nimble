{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bionim-v0_0_1.flake = false;
  inputs.src-bionim-v0_0_1.type = "github";
  inputs.src-bionim-v0_0_1.owner = "Unaimend";
  inputs.src-bionim-v0_0_1.repo = "bionim";
  inputs.src-bionim-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-bionim-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bionim-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bionim-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}