{
  description = ''Minimalistic Kernel-Syslogd For Linux in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kslog-v0_5.flake = false;
  inputs.src-kslog-v0_5.type = "github";
  inputs.src-kslog-v0_5.owner = "c-blake";
  inputs.src-kslog-v0_5.repo = "kslog";
  inputs.src-kslog-v0_5.ref = "refs/tags/v0.5";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-kslog-v0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kslog-v0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kslog-v0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}