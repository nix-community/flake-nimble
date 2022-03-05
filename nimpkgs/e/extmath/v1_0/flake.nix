{
  description = ''Nim math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-extmath-v1_0.flake = false;
  inputs.src-extmath-v1_0.type = "github";
  inputs.src-extmath-v1_0.owner = "achesak";
  inputs.src-extmath-v1_0.repo = "extmath.nim";
  inputs.src-extmath-v1_0.ref = "refs/tags/v1.0";
  inputs.src-extmath-v1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-extmath-v1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-extmath-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}