{
  description = ''
    Google Cloud Platform (GCP) APIs
  '';
  inputs.src-gcplat.url = "https://github.com/disruptek/gcplat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
