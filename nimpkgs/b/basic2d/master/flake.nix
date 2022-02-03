{
  description = ''Deprecated module for vector/matrices operations.'';
  inputs.src-basic2d-master.flake = false;
  inputs.src-basic2d-master.type = "github";
  inputs.src-basic2d-master.owner = "nim-lang";
  inputs.src-basic2d-master.repo = "basic2d";
  inputs.src-basic2d-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-basic2d-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basic2d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-basic2d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}