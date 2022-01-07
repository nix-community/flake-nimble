{
  description = ''
    Static blog generator ala Jekyll.
  '';
  inputs.src-ipsumgenera.url = "https://github.com/dom96/ipsumgenera";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
