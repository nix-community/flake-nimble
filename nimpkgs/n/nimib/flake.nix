{
  description = ''
    nimib 🐳 - nim 👑 driven ⛵ publishing ✍
  '';
  inputs.src-nimib.url = "https://github.com/pietroppeter/nimib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
