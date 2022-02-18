{
  description = ''Time travelling for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timecop-0_1_0.flake = false;
  inputs.src-timecop-0_1_0.type = "github";
  inputs.src-timecop-0_1_0.owner = "ba0f3";
  inputs.src-timecop-0_1_0.repo = "timecop.nim";
  inputs.src-timecop-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."subhook".type = "github";
  inputs."subhook".owner = "riinr";
  inputs."subhook".repo = "flake-nimble";
  inputs."subhook".ref = "flake-pinning";
  inputs."subhook".dir = "nimpkgs/s/subhook";

  outputs = { self, nixpkgs, flakeNimbleLib, src-timecop-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timecop-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timecop-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}