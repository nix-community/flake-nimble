{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbench-master.flake = false;
  inputs.src-nimbench-master.type = "github";
  inputs.src-nimbench-master.owner = "ivankoster";
  inputs.src-nimbench-master.repo = "nimbench";
  inputs.src-nimbench-master.ref = "refs/heads/master";
  
  
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbench-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbench-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbench-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}