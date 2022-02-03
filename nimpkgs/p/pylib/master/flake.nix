{
  description = ''Nim library with python-like functions and operators'';
  inputs.src-pylib-master.flake = false;
  inputs.src-pylib-master.type = "github";
  inputs.src-pylib-master.owner = "Yardanico";
  inputs.src-pylib-master.repo = "nimpylib";
  inputs.src-pylib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pylib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pylib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pylib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}