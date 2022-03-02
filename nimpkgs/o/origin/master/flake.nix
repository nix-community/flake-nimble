{
  description = ''A graphics math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-origin-master.flake = false;
  inputs.src-origin-master.type = "github";
  inputs.src-origin-master.owner = "mfiano";
  inputs.src-origin-master.repo = "origin.nim";
  inputs.src-origin-master.ref = "refs/heads/master";
  inputs.src-origin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-origin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-origin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-origin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}