{
  description = ''A Jester web plugin that embeds key information into a JSON object.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jesterjson-master.flake = false;
  inputs.src-jesterjson-master.type = "github";
  inputs.src-jesterjson-master.owner = "JohnAD";
  inputs.src-jesterjson-master.repo = "jesterjson";
  inputs.src-jesterjson-master.ref = "refs/heads/master";
  inputs.src-jesterjson-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jesterwithplugins".type = "github";
  # inputs."jesterwithplugins".owner = "riinr";
  # inputs."jesterwithplugins".repo = "flake-nimble";
  # inputs."jesterwithplugins".ref = "flake-pinning";
  # inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";
  # inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jesterjson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jesterjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}