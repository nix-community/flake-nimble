{
  description = ''Minimalistic Kernel-Syslogd For Linux in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kslog-master".type = "github";
  inputs."kslog-master".owner = "riinr";
  inputs."kslog-master".repo = "flake-nimble";
  inputs."kslog-master".ref = "flake-pinning";
  inputs."kslog-master".dir = "nimpkgs/k/kslog/master";
  inputs."kslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kslog-v0_5".type = "github";
  inputs."kslog-v0_5".owner = "riinr";
  inputs."kslog-v0_5".repo = "flake-nimble";
  inputs."kslog-v0_5".ref = "flake-pinning";
  inputs."kslog-v0_5".dir = "nimpkgs/k/kslog/v0_5";
  inputs."kslog-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kslog-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}