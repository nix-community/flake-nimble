{
  description = ''
    KWin JavaScript API wrapper
  '';
  inputs.src-kwin.url = "https://github.com/reactormonk/nim-kwin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
