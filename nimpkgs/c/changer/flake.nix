{
  description = ''
    A tool for managing a project's changelog
  '';
  inputs.src-changer.url = "https://github.com/iffy/changer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
