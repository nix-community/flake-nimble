{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jestercookiemsgs-master".type = "github";
  inputs."jestercookiemsgs-master".owner = "riinr";
  inputs."jestercookiemsgs-master".repo = "flake-nimble";
  inputs."jestercookiemsgs-master".ref = "flake-pinning";
  inputs."jestercookiemsgs-master".dir = "nimpkgs/j/jestercookiemsgs/master";
  inputs."jestercookiemsgs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestercookiemsgs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jestercookiemsgs-v1_0_1".type = "github";
  inputs."jestercookiemsgs-v1_0_1".owner = "riinr";
  inputs."jestercookiemsgs-v1_0_1".repo = "flake-nimble";
  inputs."jestercookiemsgs-v1_0_1".ref = "flake-pinning";
  inputs."jestercookiemsgs-v1_0_1".dir = "nimpkgs/j/jestercookiemsgs/v1_0_1";
  inputs."jestercookiemsgs-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestercookiemsgs-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}