{
  description = ''CircleCI API client'';
  inputs.src-circleci_client-master.flake = false;
  inputs.src-circleci_client-master.type = "github";
  inputs.src-circleci_client-master.owner = "FedericoCeratto";
  inputs.src-circleci_client-master.repo = "nim-circleci";
  inputs.src-circleci_client-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-circleci_client-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-circleci_client-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-circleci_client-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}