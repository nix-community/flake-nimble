{
  description = ''
    Pure library for matching file paths against Unix style glob patterns.
  '';
  inputs.src-glob.url = "https://github.com/citycide/glob";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
