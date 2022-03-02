{
  description = ''Easy to use OTP library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."otplib-master".type = "github";
  inputs."otplib-master".owner = "riinr";
  inputs."otplib-master".repo = "flake-nimble";
  inputs."otplib-master".ref = "flake-pinning";
  inputs."otplib-master".dir = "nimpkgs/o/otplib/master";
  inputs."otplib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."otplib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}