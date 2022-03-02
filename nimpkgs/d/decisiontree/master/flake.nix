{
  description = ''Decision tree and Random forest CART implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-decisiontree-master.flake = false;
  inputs.src-decisiontree-master.type = "github";
  inputs.src-decisiontree-master.owner = "Michedev";
  inputs.src-decisiontree-master.repo = "DecisionTreeNim";
  inputs.src-decisiontree-master.ref = "refs/heads/master";
  inputs.src-decisiontree-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-decisiontree-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decisiontree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-decisiontree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}