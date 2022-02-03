{
  description = ''A Nim wrapper for the WooCommerce REST API'';
  inputs.src-woocommerce-api-nim-master.flake = false;
  inputs.src-woocommerce-api-nim-master.type = "github";
  inputs.src-woocommerce-api-nim-master.owner = "mrhdias";
  inputs.src-woocommerce-api-nim-master.repo = "woocommerce-api-nim";
  inputs.src-woocommerce-api-nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-woocommerce-api-nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-woocommerce-api-nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-woocommerce-api-nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}