{
  description = ''
    Wrapper for the DevIL image library
  '';
  inputs.src-DevIL.url = "https://github.com/Varriount/DevIL";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
