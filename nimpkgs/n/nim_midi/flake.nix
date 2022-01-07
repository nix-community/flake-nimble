{
  description = ''
    Read and write midi files
  '';
  inputs.src-nim_midi.url = "https://github.com/jerous86/nim_midi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
