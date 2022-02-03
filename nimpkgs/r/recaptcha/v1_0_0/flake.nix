{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
  inputs.src-recaptcha-v1_0_0.flake = false;
  inputs.src-recaptcha-v1_0_0.type = "github";
  inputs.src-recaptcha-v1_0_0.owner = "euantorano";
  inputs.src-recaptcha-v1_0_0.repo = "recaptcha.nim";
  inputs.src-recaptcha-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-recaptcha-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-recaptcha-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-recaptcha-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}