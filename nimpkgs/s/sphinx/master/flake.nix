{
  description = ''Sphinx wrapper for Nim'';
  inputs.src-sphinx-master.flake = false;
  inputs.src-sphinx-master.type = "github";
  inputs.src-sphinx-master.owner = "Araq";
  inputs.src-sphinx-master.repo = "sphinx";
  inputs.src-sphinx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sphinx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sphinx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sphinx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}