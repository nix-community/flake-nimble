{
  description = ''Easy to use OTP library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-otplib-master.flake = false;
  inputs.src-otplib-master.type = "github";
  inputs.src-otplib-master.owner = "dimspith";
  inputs.src-otplib-master.repo = "otplib";
  inputs.src-otplib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-otplib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-otplib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-otplib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}