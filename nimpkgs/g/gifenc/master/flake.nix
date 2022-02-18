{
  description = ''Gif Encoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gifenc-master.flake = false;
  inputs.src-gifenc-master.type = "github";
  inputs.src-gifenc-master.owner = "ftsf";
  inputs.src-gifenc-master.repo = "gifenc";
  inputs.src-gifenc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gifenc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gifenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gifenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}