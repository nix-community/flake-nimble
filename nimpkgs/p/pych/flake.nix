{
  description = ''
    A tool that watches Python files and re-runs them on change.
  '';
  inputs.src-pych.url = "https://github.com/rburmorrison/pych";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
