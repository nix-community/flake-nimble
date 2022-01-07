{
  description = ''
    Obsolete - please use egl instead!
  '';
  inputs.src-io-egl.url = "https://github.com/nimious/io-egl.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
