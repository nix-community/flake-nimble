{
  description = ''Module for working with paths that is as similar as possible to Python's pathlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pythonpathlib-master.flake = false;
  inputs.src-pythonpathlib-master.type = "github";
  inputs.src-pythonpathlib-master.owner = "achesak";
  inputs.src-pythonpathlib-master.repo = "nim-pythonpathlib";
  inputs.src-pythonpathlib-master.ref = "refs/heads/master";
  inputs.src-pythonpathlib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pythonpathlib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonpathlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pythonpathlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}