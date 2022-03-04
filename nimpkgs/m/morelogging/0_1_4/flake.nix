{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-morelogging-0_1_4.flake = false;
  inputs.src-morelogging-0_1_4.type = "github";
  inputs.src-morelogging-0_1_4.owner = "FedericoCeratto";
  inputs.src-morelogging-0_1_4.repo = "nim-morelogging";
  inputs.src-morelogging-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-morelogging-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-morelogging-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morelogging-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-morelogging-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}