{
  description = ''
    Access bit mapped portions of bytes in binary data as int variables
  '';
  inputs.src-mapbits.url = "https://github.com/jlp765/mapbits";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
