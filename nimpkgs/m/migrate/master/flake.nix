{
  description = ''A simple database migration utility for Nim.'';
  inputs.src-migrate-master.flake = false;
  inputs.src-migrate-master.type = "github";
  inputs.src-migrate-master.owner = "euantorano";
  inputs.src-migrate-master.repo = "migrate.nim";
  inputs.src-migrate-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-migrate-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-migrate-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-migrate-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}