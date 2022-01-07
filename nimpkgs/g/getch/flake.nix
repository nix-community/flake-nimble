{
  description = ''
    getch() for Windows and Unix
  '';
  inputs.src-getch.url = "https://github.com/6A/getch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
