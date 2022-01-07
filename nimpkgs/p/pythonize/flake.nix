{
  description = ''
    A higher-level wrapper for the Python Programing Language
  '';
  inputs.src-pythonize.url = "https://github.com/marcoapintoo/nim-pythonize.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
