{
  description = ''Nim client for Stripe.com'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stripe-master".type = "github";
  inputs."stripe-master".owner = "riinr";
  inputs."stripe-master".repo = "flake-nimble";
  inputs."stripe-master".ref = "flake-pinning";
  inputs."stripe-master".dir = "nimpkgs/s/stripe/master";
  inputs."stripe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stripe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}