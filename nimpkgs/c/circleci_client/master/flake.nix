{
  description = ''CircleCI API client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-circleci_client-master.flake = false;
  inputs.src-circleci_client-master.type = "github";
  inputs.src-circleci_client-master.owner = "FedericoCeratto";
  inputs.src-circleci_client-master.repo = "nim-circleci";
  inputs.src-circleci_client-master.ref = "refs/heads/master";
  inputs.src-circleci_client-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-circleci_client-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-circleci_client-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-circleci_client-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}