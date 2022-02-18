{
  description = ''everything  search engine wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimeverything-master.flake = false;
  inputs.src-nimeverything-master.type = "github";
  inputs.src-nimeverything-master.owner = "xland";
  inputs.src-nimeverything-master.repo = "nimeverything";
  inputs.src-nimeverything-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimeverything-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimeverything-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimeverything-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}