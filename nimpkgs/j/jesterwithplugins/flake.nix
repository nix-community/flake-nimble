{
  description = ''
    A sinatra-like web framework for Nim with plugins.
  '';
  inputs.src-jesterwithplugins.url = "https://github.com/JohnAD/jesterwithplugins/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
