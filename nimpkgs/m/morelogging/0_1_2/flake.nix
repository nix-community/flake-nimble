{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
  inputs.src-morelogging-0_1_2.flake = false;
  inputs.src-morelogging-0_1_2.type = "github";
  inputs.src-morelogging-0_1_2.owner = "FedericoCeratto";
  inputs.src-morelogging-0_1_2.repo = "nim-morelogging";
  inputs.src-morelogging-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-morelogging-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morelogging-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-morelogging-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}