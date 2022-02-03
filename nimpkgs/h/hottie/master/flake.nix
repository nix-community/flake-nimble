{
  description = ''Sampling profiler that finds hot paths in your code.'';
  inputs.src-hottie-master.flake = false;
  inputs.src-hottie-master.type = "github";
  inputs.src-hottie-master.owner = "treeform";
  inputs.src-hottie-master.repo = "hottie";
  inputs.src-hottie-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."ptrace".url = "path:../../../p/ptrace";
  inputs."ptrace".type = "github";
  inputs."ptrace".owner = "riinr";
  inputs."ptrace".repo = "flake-nimble";
  inputs."ptrace".ref = "flake-pinning";
  inputs."ptrace".dir = "nimpkgs/p/ptrace";

  outputs = { self, nixpkgs, src-hottie-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hottie-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hottie-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}