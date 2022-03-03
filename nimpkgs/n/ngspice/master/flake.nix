{
  description = ''Analog electronic circuit simiulator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ngspice-master.flake = false;
  inputs.src-ngspice-master.type = "github";
  inputs.src-ngspice-master.owner = "haxscramper";
  inputs.src-ngspice-master.repo = "ngspice";
  inputs.src-ngspice-master.ref = "refs/heads/master";
  inputs.src-ngspice-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sorta".type = "github";
  # inputs."sorta".owner = "riinr";
  # inputs."sorta".repo = "flake-nimble";
  # inputs."sorta".ref = "flake-pinning";
  # inputs."sorta".dir = "nimpkgs/s/sorta";
  # inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ngspice-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngspice-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ngspice-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}