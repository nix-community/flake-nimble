{
  description = ''
    Plot and visualize data
  '';
  inputs.src-pl0t.url = "https://github.com/al6x/pl0t?subdir=api/nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
