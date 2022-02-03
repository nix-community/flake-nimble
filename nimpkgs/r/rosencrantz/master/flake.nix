{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-master.flake = false;
  inputs.src-rosencrantz-master.type = "github";
  inputs.src-rosencrantz-master.owner = "andreaferretti";
  inputs.src-rosencrantz-master.repo = "rosencrantz";
  inputs.src-rosencrantz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rosencrantz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}