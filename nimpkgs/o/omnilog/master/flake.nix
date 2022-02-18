{
  description = ''Advanced logging library for Nim with structured logging, formatters, filters and writers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omnilog-master.flake = false;
  inputs.src-omnilog-master.type = "github";
  inputs.src-omnilog-master.owner = "nim-appkit";
  inputs.src-omnilog-master.repo = "omnilog";
  inputs.src-omnilog-master.ref = "refs/heads/master";
  
  
  inputs."values".type = "github";
  inputs."values".owner = "riinr";
  inputs."values".repo = "flake-nimble";
  inputs."values".ref = "flake-pinning";
  inputs."values".dir = "nimpkgs/v/values";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnilog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnilog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnilog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}