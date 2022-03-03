{
  description = ''A Nim wrapper for the WooCommerce REST API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-woocommerce-api-nim-master.flake = false;
  inputs.src-woocommerce-api-nim-master.type = "github";
  inputs.src-woocommerce-api-nim-master.owner = "mrhdias";
  inputs.src-woocommerce-api-nim-master.repo = "woocommerce-api-nim";
  inputs.src-woocommerce-api-nim-master.ref = "refs/heads/master";
  inputs.src-woocommerce-api-nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-woocommerce-api-nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-woocommerce-api-nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-woocommerce-api-nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}