{
  description = ''
    Thin lib to find if chrome exists on Windows, Mac, or Linux.
  '';
  inputs.src-nimchromepath.url = "https://github.com/felipetesc/NimChromePath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
