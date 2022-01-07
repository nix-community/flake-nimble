{
  description = ''
    A Nim wrapper for the WooCommerce REST API
  '';
  inputs.src-woocommerce-api-nim.url = "https://github.com/mrhdias/woocommerce-api-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
