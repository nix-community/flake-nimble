{
  description = ''
    Simple method of obtaining secure random numbers from the OS
  '';
  inputs.src-urand.url = "https://github.com/Matceporial/nim-urand";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
