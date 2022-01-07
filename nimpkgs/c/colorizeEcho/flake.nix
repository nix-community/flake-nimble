{
  description = ''
    colorizeEcho is a package which colorize echo message on Windows command prompt.
  '';
  inputs.src-colorizeEcho.url = "https://github.com/s3pt3mb3r/colorizeEcho";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
