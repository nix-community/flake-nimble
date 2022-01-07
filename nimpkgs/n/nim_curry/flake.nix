{
  description = ''
    Provides a macro to curry function
  '';
  inputs.src-nim_curry.url = "https://github.com/zer0-star/nim-curry";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
