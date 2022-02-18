{
  description = ''Time travelling for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timecop-master.flake = false;
  inputs.src-timecop-master.type = "github";
  inputs.src-timecop-master.owner = "ba0f3";
  inputs.src-timecop-master.repo = "timecop.nim";
  inputs.src-timecop-master.ref = "refs/heads/master";
  
  
  inputs."subhook".type = "github";
  inputs."subhook".owner = "riinr";
  inputs."subhook".repo = "flake-nimble";
  inputs."subhook".ref = "flake-pinning";
  inputs."subhook".dir = "nimpkgs/s/subhook";

  outputs = { self, nixpkgs, flakeNimbleLib, src-timecop-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timecop-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timecop-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}