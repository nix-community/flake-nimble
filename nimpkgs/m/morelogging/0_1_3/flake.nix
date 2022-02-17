{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
  inputs.src-morelogging-0_1_3.flake = false;
  inputs.src-morelogging-0_1_3.type = "github";
  inputs.src-morelogging-0_1_3.owner = "FedericoCeratto";
  inputs.src-morelogging-0_1_3.repo = "nim-morelogging";
  inputs.src-morelogging-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-morelogging-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morelogging-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-morelogging-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}