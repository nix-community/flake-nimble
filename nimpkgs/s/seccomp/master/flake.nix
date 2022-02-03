{
  description = ''Linux Seccomp sandbox library'';
  inputs.src-seccomp-master.flake = false;
  inputs.src-seccomp-master.type = "github";
  inputs.src-seccomp-master.owner = "FedericoCeratto";
  inputs.src-seccomp-master.repo = "nim-seccomp";
  inputs.src-seccomp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-seccomp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seccomp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-seccomp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}