{
  description = ''
    Syndicated actors for conversational concurrency
  '';
  inputs.src-syndicate.url = "https://git.sr.ht/~ehmry/syndicate-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
