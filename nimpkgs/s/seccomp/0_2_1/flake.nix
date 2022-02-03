{
  description = ''Linux Seccomp sandbox library'';
  inputs.src-seccomp-0_2_1.flake = false;
  inputs.src-seccomp-0_2_1.type = "github";
  inputs.src-seccomp-0_2_1.owner = "FedericoCeratto";
  inputs.src-seccomp-0_2_1.repo = "nim-seccomp";
  inputs.src-seccomp-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-seccomp-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seccomp-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-seccomp-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}