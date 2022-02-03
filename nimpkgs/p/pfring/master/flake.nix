{
  description = ''PF_RING wrapper for Nim'';
  inputs.src-pfring-master.flake = false;
  inputs.src-pfring-master.type = "github";
  inputs.src-pfring-master.owner = "ba0f3";
  inputs.src-pfring-master.repo = "pfring.nim";
  inputs.src-pfring-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pfring-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pfring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pfring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}