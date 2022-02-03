{
  description = ''Module to provide an interface as similar as possible to Python's math libary'';
  inputs.src-pythonmath-master.flake = false;
  inputs.src-pythonmath-master.type = "github";
  inputs.src-pythonmath-master.owner = "achesak";
  inputs.src-pythonmath-master.repo = "nim-pythonmath";
  inputs.src-pythonmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pythonmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pythonmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}