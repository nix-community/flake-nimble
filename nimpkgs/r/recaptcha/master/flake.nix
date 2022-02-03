{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
  inputs.src-recaptcha-master.flake = false;
  inputs.src-recaptcha-master.type = "github";
  inputs.src-recaptcha-master.owner = "euantorano";
  inputs.src-recaptcha-master.repo = "recaptcha.nim";
  inputs.src-recaptcha-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-recaptcha-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-recaptcha-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-recaptcha-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}