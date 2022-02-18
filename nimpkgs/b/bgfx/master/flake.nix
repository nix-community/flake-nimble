{
  description = ''BGFX wrapper for the nim programming language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bgfx-master.flake = false;
  inputs.src-bgfx-master.type = "github";
  inputs.src-bgfx-master.owner = "Halsys";
  inputs.src-bgfx-master.repo = "nim-bgfx";
  inputs.src-bgfx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bgfx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bgfx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bgfx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}