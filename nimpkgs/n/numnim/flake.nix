{
  description = ''
    A numpy like ndarray and dataframe library for nim-lang.
  '';
  inputs.src-numnim.url = "https://github.com/YesDrX/numnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
