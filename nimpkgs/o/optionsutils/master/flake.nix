{
  description = ''Utility macros for easier handling of options in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-optionsutils-master.flake = false;
  inputs.src-optionsutils-master.type = "github";
  inputs.src-optionsutils-master.owner = "PMunch";
  inputs.src-optionsutils-master.repo = "nim-optionsutils";
  inputs.src-optionsutils-master.ref = "refs/heads/master";
  inputs.src-optionsutils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-optionsutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionsutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-optionsutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}