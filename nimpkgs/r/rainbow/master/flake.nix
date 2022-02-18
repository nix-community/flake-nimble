{
  description = ''256 colors for shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rainbow-master.flake = false;
  inputs.src-rainbow-master.type = "github";
  inputs.src-rainbow-master.owner = "Willyboar";
  inputs.src-rainbow-master.repo = "rainbow";
  inputs.src-rainbow-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rainbow-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rainbow-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rainbow-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}