{
  description = ''A Jester web plugin that gets a pooled MongoDB connection for each web query.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jestermongopool-v1_0_1.flake = false;
  inputs.src-jestermongopool-v1_0_1.type = "github";
  inputs.src-jestermongopool-v1_0_1.owner = "JohnAD";
  inputs.src-jestermongopool-v1_0_1.repo = "jestermongopool";
  inputs.src-jestermongopool-v1_0_1.ref = "refs/tags/v1.0.1";
  inputs.src-jestermongopool-v1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jesterwithplugins".type = "github";
  # inputs."jesterwithplugins".owner = "riinr";
  # inputs."jesterwithplugins".repo = "flake-nimble";
  # inputs."jesterwithplugins".ref = "flake-pinning";
  # inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";
  # inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."mongopool".type = "github";
  # inputs."mongopool".owner = "riinr";
  # inputs."mongopool".repo = "flake-nimble";
  # inputs."mongopool".ref = "flake-pinning";
  # inputs."mongopool".dir = "nimpkgs/m/mongopool";
  # inputs."mongopool".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mongopool".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jestermongopool-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestermongopool-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jestermongopool-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}