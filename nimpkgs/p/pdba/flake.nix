{
  description = ''
    A postgres DB adapter for nim.
  '';
  inputs.src-pdba.url = "https://github.com/misebox/pdba";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
