{
  description = ''A library for factorization machines in Nim.'';
  inputs.src-nimfm-master.flake = false;
  inputs.src-nimfm-master.type = "github";
  inputs.src-nimfm-master.owner = "neonnnnn";
  inputs.src-nimfm-master.repo = "nimfm";
  inputs.src-nimfm-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."nimlapack".url = "path:../../../n/nimlapack";
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, src-nimfm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}