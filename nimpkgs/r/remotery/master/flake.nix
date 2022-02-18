{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-remotery-master.flake = false;
  inputs.src-remotery-master.type = "github";
  inputs.src-remotery-master.owner = "Halsys";
  inputs.src-remotery-master.repo = "nim-Remotery";
  inputs.src-remotery-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-remotery-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-remotery-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-remotery-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}