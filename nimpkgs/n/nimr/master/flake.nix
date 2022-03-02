{
  description = ''Helper to run nim code like a script'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimr-master.flake = false;
  inputs.src-nimr-master.type = "github";
  inputs.src-nimr-master.owner = "Jeff-Ciesielski";
  inputs.src-nimr-master.repo = "nimr";
  inputs.src-nimr-master.ref = "refs/heads/master";
  inputs.src-nimr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}