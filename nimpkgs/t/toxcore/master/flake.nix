{
  description = ''C Tox core wrapper'';
  inputs.src-toxcore-master.flake = false;
  inputs.src-toxcore-master.type = "other";
  inputs.src-toxcore-master.owner = "~ehmry";
  inputs.src-toxcore-master.repo = "nim_tox";
  inputs.src-toxcore-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-toxcore-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toxcore-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-toxcore-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}