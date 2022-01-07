{
  description = ''
    Terminal UI based cd command
  '';
  inputs.src-qwertycd.url = "https://github.com/minefuto/qwertycd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
