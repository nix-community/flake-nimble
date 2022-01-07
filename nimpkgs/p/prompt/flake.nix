{
  description = ''
    Feature-rich readline replacement
  '';
  inputs.src-prompt.url = "https://github.com/surf1nb1rd/nim-prompt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
