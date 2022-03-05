{
  description = ''GitIgnore Generation Interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gigi-v0_2_0.flake = false;
  inputs.src-gigi-v0_2_0.type = "github";
  inputs.src-gigi-v0_2_0.owner = "attakei";
  inputs.src-gigi-v0_2_0.repo = "gigi";
  inputs.src-gigi-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-gigi-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."puppy".type = "github";
  inputs."puppy".owner = "riinr";
  inputs."puppy".repo = "flake-nimble";
  inputs."puppy".ref = "flake-pinning";
  inputs."puppy".dir = "nimpkgs/p/puppy";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gigi-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gigi-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gigi-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}