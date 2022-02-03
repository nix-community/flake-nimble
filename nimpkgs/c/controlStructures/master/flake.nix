{
  description = ''Additional control structures'';
  inputs.src-controlStructures-master.flake = false;
  inputs.src-controlStructures-master.type = "github";
  inputs.src-controlStructures-master.owner = "TakeYourFreedom";
  inputs.src-controlStructures-master.repo = "Additional-Control-Structures-for-Nim";
  inputs.src-controlStructures-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-controlStructures-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-controlStructures-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-controlStructures-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}