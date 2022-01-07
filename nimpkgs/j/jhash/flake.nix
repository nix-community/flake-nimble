{
  description = ''
    Jenkins Hasher producing 32 bit digests
  '';
  inputs.src-jhash.url = "https://github.com/mjfh/nim-jhash.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
