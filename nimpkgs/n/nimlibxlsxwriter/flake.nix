{
  description = ''
    libxslxwriter wrapper for Nim
  '';
  inputs.src-nimlibxlsxwriter.url = "https://github.com/ThomasTJdev/nimlibxlsxwriter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
