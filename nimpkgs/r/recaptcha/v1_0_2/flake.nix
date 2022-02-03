{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
  inputs.src-recaptcha-v1_0_2.flake = false;
  inputs.src-recaptcha-v1_0_2.type = "github";
  inputs.src-recaptcha-v1_0_2.owner = "euantorano";
  inputs.src-recaptcha-v1_0_2.repo = "recaptcha.nim";
  inputs.src-recaptcha-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-recaptcha-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-recaptcha-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-recaptcha-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}