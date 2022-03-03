{
  description = ''AST for various languages'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hasts-v0_1_5.flake = false;
  inputs.src-hasts-v0_1_5.type = "github";
  inputs.src-hasts-v0_1_5.owner = "haxscramper";
  inputs.src-hasts-v0_1_5.repo = "hasts";
  inputs.src-hasts-v0_1_5.ref = "refs/tags/v0.1.5";
  inputs.src-hasts-v0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hasts-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hasts-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hasts-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}