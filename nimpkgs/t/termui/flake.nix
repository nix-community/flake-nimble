{
  description = ''
    Simple UI components for the terminal.
  '';
  inputs.src-termui.url = "https://github.com/jjv360/nim-termui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
