{
  description = ''Advanced logging library for Nim with structured logging, formatters, filters and writers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-omnilog-master.flake = false;
  inputs.src-omnilog-master.type = "github";
  inputs.src-omnilog-master.owner = "nim-appkit";
  inputs.src-omnilog-master.repo = "omnilog";
  inputs.src-omnilog-master.ref = "refs/heads/master";
  inputs.src-omnilog-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."values".type = "github";
  inputs."values".owner = "riinr";
  inputs."values".repo = "flake-nimble";
  inputs."values".ref = "flake-pinning";
  inputs."values".dir = "nimpkgs/v/values";
  inputs."values".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnilog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnilog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnilog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}