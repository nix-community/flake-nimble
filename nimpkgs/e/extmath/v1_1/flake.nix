{
  description = ''Nim math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-extmath-v1_1.flake = false;
  inputs.src-extmath-v1_1.type = "github";
  inputs.src-extmath-v1_1.owner = "achesak";
  inputs.src-extmath-v1_1.repo = "extmath.nim";
  inputs.src-extmath-v1_1.ref = "refs/tags/v1.1";
  inputs.src-extmath-v1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-extmath-v1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-extmath-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}