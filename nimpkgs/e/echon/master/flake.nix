{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-echon-master.flake = false;
  inputs.src-echon-master.type = "github";
  inputs.src-echon-master.owner = "eXodiquas";
  inputs.src-echon-master.repo = "Echon";
  inputs.src-echon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-echon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-echon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-echon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}