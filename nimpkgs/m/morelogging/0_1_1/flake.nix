{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-morelogging-0_1_1.flake = false;
  inputs.src-morelogging-0_1_1.type = "github";
  inputs.src-morelogging-0_1_1.owner = "FedericoCeratto";
  inputs.src-morelogging-0_1_1.repo = "nim-morelogging";
  inputs.src-morelogging-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-morelogging-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-morelogging-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morelogging-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-morelogging-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}