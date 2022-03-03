{
  description = ''Easy to use OTP library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-otplib-master.flake = false;
  inputs.src-otplib-master.type = "github";
  inputs.src-otplib-master.owner = "dimspith";
  inputs.src-otplib-master.repo = "otplib";
  inputs.src-otplib-master.ref = "refs/heads/master";
  inputs.src-otplib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-otplib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-otplib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-otplib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}