{
  description = ''
    Easy way to 'Mock' C++ interface
  '';
  inputs.src-clibpp.url = "https://github.com/onionhammer/clibpp.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
