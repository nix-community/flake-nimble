{
  description = ''A URL shortener cli app. using bit.ly'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."urlshortener-master".type = "github";
  inputs."urlshortener-master".owner = "riinr";
  inputs."urlshortener-master".repo = "flake-nimble";
  inputs."urlshortener-master".ref = "flake-pinning";
  inputs."urlshortener-master".dir = "nimpkgs/u/urlshortener/master";
  inputs."urlshortener-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlshortener-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."urlshortener-v0_1_0".type = "github";
  inputs."urlshortener-v0_1_0".owner = "riinr";
  inputs."urlshortener-v0_1_0".repo = "flake-nimble";
  inputs."urlshortener-v0_1_0".ref = "flake-pinning";
  inputs."urlshortener-v0_1_0".dir = "nimpkgs/u/urlshortener/v0_1_0";
  inputs."urlshortener-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlshortener-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}