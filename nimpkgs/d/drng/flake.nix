{
  description = ''
    Provides access to the rdrand and rdseed instructions. Based on Intel's DRNG Library (libdrng)
  '';
  inputs.src-drng.url = "https://github.com/rockcavera/nim-drng";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
