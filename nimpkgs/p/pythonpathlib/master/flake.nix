{
  description = ''Module for working with paths that is as similar as possible to Python's pathlib'';
  inputs.src-pythonpathlib-master.flake = false;
  inputs.src-pythonpathlib-master.type = "github";
  inputs.src-pythonpathlib-master.owner = "achesak";
  inputs.src-pythonpathlib-master.repo = "nim-pythonpathlib";
  inputs.src-pythonpathlib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pythonpathlib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonpathlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pythonpathlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}