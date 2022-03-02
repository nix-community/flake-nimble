{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-recaptcha-master.flake = false;
  inputs.src-recaptcha-master.type = "github";
  inputs.src-recaptcha-master.owner = "euantorano";
  inputs.src-recaptcha-master.repo = "recaptcha.nim";
  inputs.src-recaptcha-master.ref = "refs/heads/master";
  inputs.src-recaptcha-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-recaptcha-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-recaptcha-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-recaptcha-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}