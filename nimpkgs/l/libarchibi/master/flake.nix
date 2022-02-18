{
  description = ''Libarchive at compile-time, Libarchive Chibi Edition'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libarchibi-master.flake = false;
  inputs.src-libarchibi-master.type = "github";
  inputs.src-libarchibi-master.owner = "juancarlospaco";
  inputs.src-libarchibi-master.repo = "libarchibi";
  inputs.src-libarchibi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libarchibi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libarchibi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libarchibi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}