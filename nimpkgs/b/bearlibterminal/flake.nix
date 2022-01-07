{
  description = ''
    Wrapper for the C[++] library BearLibTerminal
  '';
  inputs.src-bearlibterminal.url = "https://github.com/irskep/BearLibTerminal-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
