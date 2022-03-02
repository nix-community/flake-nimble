{
  description = ''A small program to make Nim shebang-able without the overhead of compiling each time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimcr-master.flake = false;
  inputs.src-nimcr-master.type = "github";
  inputs.src-nimcr-master.owner = "PMunch";
  inputs.src-nimcr-master.repo = "nimcr";
  inputs.src-nimcr-master.ref = "refs/heads/master";
  inputs.src-nimcr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}