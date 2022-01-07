{
  description = ''
    A client for the Pwned passwords API.
  '';
  inputs.src-pwned.url = "https://github.com/dom96/pwned";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
