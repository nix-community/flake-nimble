{
  description = ''A Nim wrapper for the WooCommerce REST API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."woocommerce-api-nim-master".type = "github";
  inputs."woocommerce-api-nim-master".owner = "riinr";
  inputs."woocommerce-api-nim-master".repo = "flake-nimble";
  inputs."woocommerce-api-nim-master".ref = "flake-pinning";
  inputs."woocommerce-api-nim-master".dir = "nimpkgs/w/woocommerce-api-nim/master";
  inputs."woocommerce-api-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."woocommerce-api-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}