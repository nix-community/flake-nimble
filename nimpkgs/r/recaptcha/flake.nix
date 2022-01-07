{
  description = ''
    reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.
  '';
  inputs.src-recaptcha.url = "https://github.com/euantorano/recaptcha.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
