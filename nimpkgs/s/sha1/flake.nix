{
  description = ''
    SHA-1 produces a 160-bit (20-byte) hash value from arbitrary input
  '';
  inputs.src-sha1.url = "https://github.com/onionhammer/sha1";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
