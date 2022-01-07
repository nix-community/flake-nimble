{
  description = ''
    Statistical tests in Nim.
  '';
  inputs.src-statistical_tests.url = "https://github.com/ayman-albaz/statistical-tests";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
