{
  description = ''
    Nearly zero-overhead input/output streams for Nim
  '';
  inputs.src-faststreams.url = "https://github.com/status-im/nim-faststreams";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
