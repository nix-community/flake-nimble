{
  description = ''
    Convert Helix Version Control / Perforce (p4) -ztag output to JSON
  '';
  inputs.src-p4ztag_to_json.url = "https://github.com/kaushalmodi/p4ztag_to_json";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
