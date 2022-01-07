{
  description = ''
    Create files of the desired size
  '';
  inputs.src-fwrite.url = "https://github.com/pdrb/nim-fwrite";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
