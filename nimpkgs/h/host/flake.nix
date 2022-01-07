{
  description = ''
    A program to staticlly host files or directories over HTTP
  '';
  inputs.src-host.url = "https://github.com/RainbowAsteroids/host";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
