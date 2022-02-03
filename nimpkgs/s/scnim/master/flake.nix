{
  description = ''Develop SuperCollider UGens in Nim'';
  inputs.src-scnim-master.flake = false;
  inputs.src-scnim-master.type = "github";
  inputs.src-scnim-master.owner = "capocasa";
  inputs.src-scnim-master.repo = "scnim";
  inputs.src-scnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-scnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}