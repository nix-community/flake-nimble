{
  description = ''Module to provide an interface as similar as possible to Python's math libary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pythonmath-master.flake = false;
  inputs.src-pythonmath-master.type = "github";
  inputs.src-pythonmath-master.owner = "achesak";
  inputs.src-pythonmath-master.repo = "nim-pythonmath";
  inputs.src-pythonmath-master.ref = "refs/heads/master";
  inputs.src-pythonmath-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pythonmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pythonmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}