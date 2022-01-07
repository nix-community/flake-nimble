{
  description = ''
    Binding to libvorbis
  '';
  inputs.src-vorbis.url = "https://bitbucket.org/BitPuffin/nim-vorbis";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
