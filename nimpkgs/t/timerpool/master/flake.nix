{
  description = ''threadsafe timerpool implementation for event purpose'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-timerpool-master.flake = false;
  inputs.src-timerpool-master.type = "github";
  inputs.src-timerpool-master.owner = "mikra01";
  inputs.src-timerpool-master.repo = "timerpool";
  inputs.src-timerpool-master.ref = "refs/heads/master";
  inputs.src-timerpool-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timerpool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timerpool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timerpool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}