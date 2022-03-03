{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jestercookiemsgs-master.flake = false;
  inputs.src-jestercookiemsgs-master.type = "github";
  inputs.src-jestercookiemsgs-master.owner = "JohnAD";
  inputs.src-jestercookiemsgs-master.repo = "jestercookiemsgs";
  inputs.src-jestercookiemsgs-master.ref = "refs/heads/master";
  inputs.src-jestercookiemsgs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jesterwithplugins".type = "github";
  # inputs."jesterwithplugins".owner = "riinr";
  # inputs."jesterwithplugins".repo = "flake-nimble";
  # inputs."jesterwithplugins".ref = "flake-pinning";
  # inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";
  # inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jestercookiemsgs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestercookiemsgs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jestercookiemsgs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}