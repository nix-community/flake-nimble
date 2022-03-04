{
  description = ''High-level Wren wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-euwren-0_12_1.flake = false;
  inputs.src-euwren-0_12_1.type = "github";
  inputs.src-euwren-0_12_1.owner = "liquid600pgm";
  inputs.src-euwren-0_12_1.repo = "euwren";
  inputs.src-euwren-0_12_1.ref = "refs/tags/0.12.1";
  inputs.src-euwren-0_12_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-euwren-0_12_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-0_12_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-euwren-0_12_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}