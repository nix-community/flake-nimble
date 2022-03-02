{
  description = ''Find and Edit Utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fae-master.flake = false;
  inputs.src-fae-master.type = "github";
  inputs.src-fae-master.owner = "h3rald";
  inputs.src-fae-master.repo = "fae";
  inputs.src-fae-master.ref = "refs/heads/master";
  inputs.src-fae-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fae-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fae-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fae-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}