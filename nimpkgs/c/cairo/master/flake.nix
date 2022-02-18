{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cairo-master.flake = false;
  inputs.src-cairo-master.type = "github";
  inputs.src-cairo-master.owner = "nim-lang";
  inputs.src-cairo-master.repo = "cairo";
  inputs.src-cairo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cairo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cairo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cairo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}