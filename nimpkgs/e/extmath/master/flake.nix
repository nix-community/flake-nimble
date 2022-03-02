{
  description = ''Nim math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-extmath-master.flake = false;
  inputs.src-extmath-master.type = "github";
  inputs.src-extmath-master.owner = "achesak";
  inputs.src-extmath-master.repo = "extmath.nim";
  inputs.src-extmath-master.ref = "refs/heads/master";
  inputs.src-extmath-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-extmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-extmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}