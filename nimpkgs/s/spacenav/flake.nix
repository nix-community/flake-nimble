{
  description = ''
    Bindings for libspnav, the free 3Dconnexion device driver
  '';
  inputs.src-spacenav.url = "https://github.com/nimious/spacenav.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
