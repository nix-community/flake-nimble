{
  description = ''
    Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth
  '';
  inputs.src-biblioteca_guarrilla.url = "https://github.com/juancarlospaco/biblioteca-guarrilla";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
