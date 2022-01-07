{
  description = ''
    Simple database generator, connector and query tools.
  '';
  inputs.src-zfdbms.url = "https://github.com/zendbit/nim.zfdbms";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
