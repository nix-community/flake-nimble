{
  description = ''Library for interacting with Amazon Web Services (AWS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."aws_sdk-master".type = "github";
  inputs."aws_sdk-master".owner = "riinr";
  inputs."aws_sdk-master".repo = "flake-nimble";
  inputs."aws_sdk-master".ref = "flake-pinning";
  inputs."aws_sdk-master".dir = "nimpkgs/a/aws_sdk/master";
  inputs."aws_sdk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aws_sdk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}