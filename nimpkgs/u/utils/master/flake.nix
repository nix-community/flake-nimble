{
  description = ''Collection of string, parsing, pointer, ... utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-utils-master.flake = false;
  inputs.src-utils-master.type = "github";
  inputs.src-utils-master.owner = "nim-appkit";
  inputs.src-utils-master.repo = "utils";
  inputs.src-utils-master.ref = "refs/heads/master";
  inputs.src-utils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."values".type = "github";
  inputs."values".owner = "riinr";
  inputs."values".repo = "flake-nimble";
  inputs."values".ref = "flake-pinning";
  inputs."values".dir = "nimpkgs/v/values";
  inputs."values".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-utils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-utils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-utils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}