{
  description = ''
    🍕🍺 emoji support for Nim 👑 and the world 🌍
  '';
  inputs.src-nimoji.url = "https://github.com/pietroppeter/nimoji";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
