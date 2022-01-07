{
  description = ''
    A package manager that delegates to package authors
  '';
  inputs.src-nimp.url = "https://github.com/c-blake/nimp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
