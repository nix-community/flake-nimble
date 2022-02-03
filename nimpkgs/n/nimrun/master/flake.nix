{
  description = ''Shebang frontend for running nim code as scripts. Does not require .nim extensions.'';
  inputs.src-nimrun-master.flake = false;
  inputs.src-nimrun-master.type = "github";
  inputs.src-nimrun-master.owner = "lee-b";
  inputs.src-nimrun-master.repo = "nimrun";
  inputs.src-nimrun-master.ref = "refs/heads/master";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-nimrun-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrun-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrun-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}