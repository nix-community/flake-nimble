{
  description = ''
    A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.
  '';
  inputs.src-Neel.url = "https://github.com/Niminem/Neel";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
