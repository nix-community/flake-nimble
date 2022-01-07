{
  description = ''
    An easy way to build homebrew files for the Nintendo Switch
  '';
  inputs.src-switch_build.url = "https://github.com/jyapayne/switch-build";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
