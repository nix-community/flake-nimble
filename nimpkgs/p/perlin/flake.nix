{
  description = ''
    Perlin noise and Simplex noise generation
  '';
  inputs.src-perlin.url = "https://github.com/Nycto/PerlinNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
