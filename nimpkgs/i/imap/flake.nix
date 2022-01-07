{
  description = ''
    IMAP client library
  '';
  inputs.src-imap.url = "https://git.sr.ht/~ehmry/nim_imap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
