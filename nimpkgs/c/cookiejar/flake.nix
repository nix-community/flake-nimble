{
  description = ''
    HTTP Cookies for Nim.
  '';
  inputs.src-cookiejar.url = "https://github.com/planety/cookiejar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
