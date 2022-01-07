{
  description = ''
    A pure implementaion of nmap for nim.
  '';
  inputs.src-nim-nmap.url = "https://github.com/blmvxer/nim-nmap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
