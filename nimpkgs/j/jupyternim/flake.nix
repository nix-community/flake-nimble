{
  description = ''
    A Jupyter kernel for nim.
  '';
  inputs.src-jupyternim.url = "https://github.com/stisa/jupyternim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
