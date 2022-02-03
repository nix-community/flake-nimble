{
  description = ''Decision tree and Random forest CART implementation in Nim'';
  inputs.src-decisiontree-master.flake = false;
  inputs.src-decisiontree-master.type = "github";
  inputs.src-decisiontree-master.owner = "Michedev";
  inputs.src-decisiontree-master.repo = "DecisionTreeNim";
  inputs.src-decisiontree-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-decisiontree-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decisiontree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-decisiontree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}