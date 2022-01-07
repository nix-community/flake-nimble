{
  description = ''
    Prebuilt components for the Fidget GUI library.
  '';
  inputs.src-spinner.url = "https://github.com/tonogram/spinner";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
