{
  description = ''declarative UI framework for building Canvas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-blackvas-master.flake = false;
  inputs.src-blackvas-master.type = "github";
  inputs.src-blackvas-master.owner = "momeemt";
  inputs.src-blackvas-master.repo = "Blackvas";
  inputs.src-blackvas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-blackvas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blackvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blackvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}