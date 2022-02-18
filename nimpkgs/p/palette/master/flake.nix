{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-palette-master.flake = false;
  inputs.src-palette-master.type = "github";
  inputs.src-palette-master.owner = "momeemt";
  inputs.src-palette-master.repo = "Palette";
  inputs.src-palette-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-palette-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-palette-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-palette-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}