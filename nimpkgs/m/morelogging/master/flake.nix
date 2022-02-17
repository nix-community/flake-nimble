{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
  inputs.src-morelogging-master.flake = false;
  inputs.src-morelogging-master.type = "github";
  inputs.src-morelogging-master.owner = "FedericoCeratto";
  inputs.src-morelogging-master.repo = "nim-morelogging";
  inputs.src-morelogging-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-morelogging-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morelogging-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-morelogging-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}