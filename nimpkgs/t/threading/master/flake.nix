{
  description = ''New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-threading-master.flake = false;
  inputs.src-threading-master.type = "github";
  inputs.src-threading-master.owner = "nim-lang";
  inputs.src-threading-master.repo = "threading";
  inputs.src-threading-master.ref = "refs/heads/master";
  inputs.src-threading-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-threading-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threading-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-threading-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}