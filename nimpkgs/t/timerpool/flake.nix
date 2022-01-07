{
  description = ''
    threadsafe timerpool implementation for event purpose
  '';
  inputs.src-timerpool.url = "https://github.com/mikra01/timerpool/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
