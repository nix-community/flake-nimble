{
  description = ''A DSL for quickly writing parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-glossolalia-master.flake = false;
  inputs.src-glossolalia-master.type = "github";
  inputs.src-glossolalia-master.owner = "fowlmouth";
  inputs.src-glossolalia-master.repo = "glossolalia";
  inputs.src-glossolalia-master.ref = "refs/heads/master";
  inputs.src-glossolalia-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-glossolalia-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glossolalia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-glossolalia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}