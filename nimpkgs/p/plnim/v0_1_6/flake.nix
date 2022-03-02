{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-plnim-v0_1_6.flake = false;
  inputs.src-plnim-v0_1_6.type = "github";
  inputs.src-plnim-v0_1_6.owner = "luisacosta828";
  inputs.src-plnim-v0_1_6.repo = "plnim";
  inputs.src-plnim-v0_1_6.ref = "refs/tags/v0.1.6";
  inputs.src-plnim-v0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."pgxcrown".type = "github";
  # inputs."pgxcrown".owner = "riinr";
  # inputs."pgxcrown".repo = "flake-nimble";
  # inputs."pgxcrown".ref = "flake-pinning";
  # inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";
  # inputs."pgxcrown".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."pgxcrown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plnim-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plnim-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}