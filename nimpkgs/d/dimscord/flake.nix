{
  description = ''
    A Discord Bot & REST Library.
  '';
  inputs.src-dimscord.url = "https://github.com/krisppurg/dimscord";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
