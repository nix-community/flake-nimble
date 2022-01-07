{
  description = ''
    Socks5 client and server library
  '';
  inputs.src-socks.url = "https://github.com/FedericoCeratto/nim-socks5";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
