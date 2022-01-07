{
  description = ''
    A graphics math library
  '';
  inputs.src-origin.url = "https://github.com/mfiano/origin.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
