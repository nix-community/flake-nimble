{
  description = ''
    A library to retrieve the list of commonly used licenses from the SPDX License List.
  '';
  inputs.src-spdx_licenses.url = "https://github.com/euantorano/spdx_licenses.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
