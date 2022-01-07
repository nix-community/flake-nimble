{
  description = ''
    A port of mdbook to nim
  '';
  inputs.src-nimibook.url = "https://github.com/pietroppeter/nimibook";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
