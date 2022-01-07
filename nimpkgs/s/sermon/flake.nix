{
  description = ''
    Monitor the state and memory of processes and URL response.
  '';
  inputs.src-sermon.url = "https://github.com/ThomasTJdev/nim_sermon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
