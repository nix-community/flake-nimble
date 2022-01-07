{
  description = ''
    Endianness aware stream I/O for Nim
  '';
  inputs.src-binstreams.url = "https://github.com/johnnovak/nim-binstreams";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
