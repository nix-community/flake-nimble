{
  description = ''
    Low-level multisync bindings to the ListenBrainz web API.
  '';
  inputs.src-listenbrainz.url = "https://gitlab.com/tandy1000/listenbrainz-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
