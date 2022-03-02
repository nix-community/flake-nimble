{
  description = ''A library to help you write rest APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbler-master.flake = false;
  inputs.src-nimbler-master.type = "github";
  inputs.src-nimbler-master.owner = "paul-nameless";
  inputs.src-nimbler-master.repo = "nimbler";
  inputs.src-nimbler-master.ref = "refs/heads/master";
  inputs.src-nimbler-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbler-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbler-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbler-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}