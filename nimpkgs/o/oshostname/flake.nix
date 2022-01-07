{
  description = ''
    Get the current hostname with gethostname(2)
  '';
  inputs.src-oshostname.url = "https://github.com/jrfondren/nim-oshostname";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
