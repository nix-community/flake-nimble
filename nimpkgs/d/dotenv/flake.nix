{
  description = ''
    Loads environment variables from `.env`.
  '';
  inputs.src-dotenv.url = "https://github.com/euantorano/dotenv.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
