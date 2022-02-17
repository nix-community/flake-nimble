{
  description = ''Analog electronic circuit simiulator library'';
  inputs.src-ngspice-master.flake = false;
  inputs.src-ngspice-master.type = "github";
  inputs.src-ngspice-master.owner = "haxscramper";
  inputs.src-ngspice-master.repo = "ngspice";
  inputs.src-ngspice-master.ref = "refs/heads/master";
  
  
  inputs."sorta".type = "github";
  inputs."sorta".owner = "riinr";
  inputs."sorta".repo = "flake-nimble";
  inputs."sorta".ref = "flake-pinning";
  inputs."sorta".dir = "nimpkgs/s/sorta";

  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-ngspice-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngspice-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ngspice-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}