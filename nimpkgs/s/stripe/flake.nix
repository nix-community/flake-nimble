{
  description = ''
    Nim client for Stripe.com
  '';
  inputs.src-stripe.url = "https://github.com/iffy/nim-stripe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
