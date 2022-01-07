{
  description = ''
    CRC32, 2 proc, copied from RosettaCode.
  '';
  inputs.src-crc32.url = "https://github.com/juancarlospaco/nim-crc32";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
